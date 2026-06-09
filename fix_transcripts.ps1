# fix_transcripts.ps1
# Reformats transcript content in ES and FR markdown chapter files
# Run with -TestMode to preview; run without to write changes

param(
    [switch]$TestMode,
    [string[]]$TestFiles
)

$DocsRoot = "C:\Users\User\OneDrive\Documents\GitHub\docs\docs"
$ZWS = [char]0x200B   # zero-width space U+200B
$FF  = [char]0x000C   # form feed (page break from PDF)

function Is-Subheading {
    param([string]$line)
    $s = $line.Trim()
    if (-not $s) { return $false }
    if ($s.StartsWith('#')) { return $false }
    # X.X pattern (period as decimal separator) - e.g. "2.1 Title"
    # But NOT if followed by a unit like mmol, mg, %, cm, kg, etc.
    if ($s -match '^\d+\.\d+\s') {
        # Exclude if the part after the decimal looks like a measurement
        if ($s -match '^\d+\.\d+\s*(mmol|mg|%|kg|cm|ml|l\/|dl|g\b|IU|UI|min\b|h\b|sec\b|mg\/|mmol\/)') {
            return $false
        }
        return $true
    }
    if ($s -match '^\d+\.\d+[\)\.]') { return $true }
    # X,X pattern (comma as decimal separator in ES - like "3,2 Basal")
    # But NOT if it looks like a decimal number (e.g. "2,7 mmol/l")
    if ($s -match '^\d+,\d+\s') {
        if ($s -match '^\d+,\d+\s*(mmol|mg|%|kg|cm|ml|l\/|dl|g\b|IU|UI|min\b|h\b|sec\b|mg\/|mmol\/)') {
            return $false
        }
        return $true
    }
    # X) pattern at start (e.g. "1) Section")
    if ($s -match '^\d+\)\s') { return $true }
    return $false
}

function Make-Subheading {
    param([string]$line)
    $s = $line.Trim()
    # Normalize X.X) -> X.X
    $s = $s -replace '^(\d+\.\d+)\)', '$1'
    # Normalize X,X -> X.X (comma decimal to period)
    $s = $s -replace '^(\d+),(\d+)', '$1.$2'
    return "### $s"
}

function Process-EmbeddedSubheadings {
    param([string]$text, [System.Collections.ArrayList]$resultChunks)

    $text = $text.Trim()
    if (-not $text) { return '' }

    # If text starts with subheading
    if (Is-Subheading $text) {
        $parts = Split-HeadingFromBody $text
        $heading = $parts[0].Trim()
        $body = $parts[1].Trim()
        [void]$resultChunks.Add((Make-Subheading $heading))
        if ($body) {
            [void]$resultChunks.Add('')
            return Process-EmbeddedSubheadings $body $resultChunks
        }
        return ''
    }

    # Look for embedded subheading mid-text
    # Pattern: non-digit-dot char followed by whitespace and then digit.digit/digit,digit
    $m = [regex]::Match($text, '(?<=[^.#\d])(\s+\d+[\.,]\d+[\s\)])')
    if ($m.Success -and $m.Index -gt 0) {
        $candidateText = $text.Substring($m.Index).Trim()
        # Verify it's actually a subheading (not a measurement like "2,7 mmol/l")
        if (Is-Subheading $candidateText) {
            $before = $text.Substring(0, $m.Index).Trim()
            $after = $candidateText
            if ($before) {
                [void]$resultChunks.Add($before)
                [void]$resultChunks.Add('')
            }
            return Process-EmbeddedSubheadings $after $resultChunks
        }
    }

    return $text
}

function Split-HeadingFromBody {
    param([string]$text)
    # Given text starting with a subheading like '2.1 Title Body text...',
    # split into [heading, body]

    # Normalize comma-decimal to period
    $text = ($text -replace '^(\d+),(\d+)', '$1.$2').Trim()

    # Look for next subheading occurrence to find end of current heading's title
    $searchStart = [Math]::Min(4, $text.Length)
    $restText = if ($text.Length -gt $searchStart) { $text.Substring($searchStart) } else { '' }
    $nextSub = [regex]::Match($restText, '(?<!\d)(\d+[\.,]\d+[\s\)]|\d+\)\s)')
    if ($nextSub.Success) {
        $splitPos = $nextSub.Index + $searchStart
        return @($text.Substring(0, $splitPos).Trim(), $text.Substring($splitPos).Trim())
    }

    $words = $text.Split(' ', [System.StringSplitOptions]::RemoveEmptyEntries)
    if ($words.Count -le 4) {
        return @($text, '')
    }

    # Scan words after the X.X token for natural title boundary:
    # 1. Word ending with colon or period = end of title
    # 2. Word containing apostrophe (French l', d', etc.) after position 1 = body starts here
    #    (but only if we have at least 1 title word already)
    for ($j = 1; $j -lt [Math]::Min(10, $words.Count); $j++) {
        $w = $words[$j]
        if ($w -match '[:.]$') {
            # Period/colon ends the title
            $headWords = $words[0..$j]
            $bodyStart = $j + 1
            $bodyWords = if ($bodyStart -lt $words.Count) { $words[$bodyStart..($words.Count-1)] } else { @() }
            return @(($headWords -join ' '), ($bodyWords -join ' '))
        }
        # If word starts with an apostrophe-elision pattern (d', l', s', etc.)
        # AND we already have 2+ title words, body starts here
        # This handles French/Spanish elision: d'ajuster, l'insuline, etc.
        # Use [char] to ensure correct Unicode matching
        $apostrophePattern = "[" + [char]0x0027 + [char]0x2019 + [char]0x2018 + "]"
        if ($j -ge 2 -and $w -match $apostrophePattern) {
            $headWords = $words[0..($j-1)]
            $bodyWords = $words[$j..($words.Count-1)]
            return @(($headWords -join ' '), ($bodyWords -join ' '))
        }
    }

    # No natural split found - take first 4 words as heading title (fallback)
    $headCount = [Math]::Min(4, $words.Count)
    $headWords = $words[0..($headCount-1)]
    $bodyWords = if ($headCount -lt $words.Count) { $words[$headCount..($words.Count-1)] } else { @() }
    return @(($headWords -join ' '), ($bodyWords -join ' '))
}

function Pre-Process {
    param([string]$text)

    # Handle form feed (PDF page break markers, char 0x0C)
    # A form feed at start of a line can be:
    # 1. A page-break continuation: text continues mid-sentence from previous page
    #    -> join with a space (remove the blank line + \f)
    # 2. A section boundary: new section/heading starts on the new page
    #    -> just remove the \f, keep the blank line as paragraph separator
    #
    # Distinguish by what follows the \f:
    # - If followed by a digit+dot/comma pattern (subheading) -> section boundary
    # - If followed by a bullet character -> section boundary
    # - If followed by lowercase text -> continuation (join)
    # - If followed by uppercase text -> ambiguous, but treat as continuation
    #   (the paragraph processing will handle the actual paragraph splits)
    #
    # Strategy:
    # - \n\r?\n\f + (digit+dot pattern OR bullet) -> remove \f only, keep blank line
    # - \n\r?\n\f + other text -> join (page-break continuation)
    # - \n\f (no preceding blank) -> join always

    # Pattern for subheading start after form feed
    $subheadingAfterFF = "\r?\n\r?\n$FF(?=\d+[\.,]\d+|\d+\)|-|\*|●|<|#)"
    # For subheading-start after blank+FF: just remove the \f, keep the blank line
    $text = [regex]::Replace($text, $subheadingAfterFF, "`n`n")

    # For all other blank+FF patterns: join (remove blank line + \f, replace with space)
    $text = [regex]::Replace($text, "\r?\n\r?\n$FF", ' ')

    # For inline \f (within a line, no preceding blank): join with space
    $text = [regex]::Replace($text, "\r?\n$FF", ' ')

    # Any remaining \f -> just remove
    $text = $text.Replace([string]$FF, '')

    # Split lines that contain multiple bullets on one line
    # (happens when bullet chars were inside span tags)
    # Insert newline before bullet chars that appear mid-line (after content)
    # Handle ●<ZWS> mid-line
    $text = [regex]::Replace($text, "(?<=\S\s*)●$ZWS", "`n●$ZWS")
    $text = [regex]::Replace($text, "(?<=\S\s*)●\s", "`n● ")
    $text = [regex]::Replace($text, "(?<=\S\s*)● ", "`n● ")
    # Handle -<ZWS> mid-line (but avoid breaking list items that start lines)
    $text = [regex]::Replace($text, "(?<=\S)\s+-$ZWS", "`n-$ZWS")
    # Handle numbered list items: N.<ZWS> or N.<ZWS> mid-line (e.g. "1.​ Item text")
    # These appear as: "...text. 1.​ Next item" or "...text 1.​ Next item"
    $text = [regex]::Replace($text, "(?<=\S)\s+(\d+\.$ZWS)", "`n`$1")
    $text = [regex]::Replace($text, "(?<=\S)\s+(\d+\.$ZWS )", "`n`$1")

    return $text
}

function Fix-Bullets {
    param([string]$text)

    # Fix all bullet variants to "- "
    # Order: most specific first to avoid double-processing
    $text = $text.Replace("● $ZWS ", "- ")          # bullet + space + ZWS + space
    $text = $text.Replace("● $ZWS", "- ")            # bullet + space + ZWS
    $text = $text.Replace("●$ZWS ", "- ")            # bullet + ZWS + space
    $text = $text.Replace("●$ZWS", "- ")             # bullet + ZWS
    $text = $text.Replace("● ", "- ")                # bullet + space
    $text = $text.Replace("●", "- ")                 # lone bullet

    $text = $text.Replace("- $ZWS ", "- ")           # hyphen + space + ZWS + space
    $text = $text.Replace("- $ZWS", "- ")            # hyphen + space + ZWS
    $text = $text.Replace("-$ZWS ", "- ")            # hyphen + ZWS + space
    $text = $text.Replace("-$ZWS", "- ")             # hyphen + ZWS

    # Fix sub-bullets: "o<ZWS>" used as indented bullet
    $text = $text.Replace("o$ZWS ", "  - ")
    $text = $text.Replace("o$ZWS", "  - ")

    # Fix numbered list bullets: N.<ZWS> -> "- " (converts "1.​ Item" to "- Item")
    # These appear at start of lines after Pre-Process splits them out
    $text = [regex]::Replace($text, "(?m)^\d+\.$ZWS\s*", "- ", [System.Text.RegularExpressions.RegexOptions]::Multiline)
    # Clean up any remaining ZWS characters that weren't converted
    $text = $text.Replace([string]$ZWS, '')

    # Fix lines starting with "-  " (double space after hyphen from replacements)
    $text = [regex]::Replace($text, '^-\s{2,}', '- ', [System.Text.RegularExpressions.RegexOptions]::Multiline)

    return $text
}

function Process-Body {
    param([string]$bodyText)

    $text = $bodyText

    # Step 1: Remove span tags, keep content
    $text = $text -replace '<span[^>]*>', ''
    $text = $text -replace '</span>', ''

    # Step 1b: Pre-process (remove form feeds, split multi-bullet lines)
    $text = Pre-Process $text

    # Step 2: Fix bullet characters
    $text = Fix-Bullets $text

    # Step 3: Process lines
    $lines = $text -split "`n"
    $resultChunks = [System.Collections.ArrayList]::new()

    $i = 0
    while ($i -lt $lines.Count) {
        $line = $lines[$i]
        $stripped = $line.Trim()

        # Empty line - paragraph separator
        if (-not $stripped) {
            [void]$resultChunks.Add('')
            $i++
            continue
        }

        # Preserve HTML lines unchanged (video-container, iframe, etc.)
        if ($stripped.StartsWith('<')) {
            [void]$resultChunks.Add($stripped)
            $i++
            continue
        }

        # Preserve chapter headings ## unchanged
        if ($stripped.StartsWith('##')) {
            [void]$resultChunks.Add($stripped)
            $i++
            continue
        }

        # Preserve HTML comments unchanged
        if ($stripped.StartsWith('<!--')) {
            [void]$resultChunks.Add($stripped)
            $i++
            continue
        }

        # Preserve existing ### subheadings
        if ($stripped.StartsWith('###')) {
            [void]$resultChunks.Add($stripped)
            $i++
            continue
        }

        # Bullet point (including sub-bullets with "  - ")
        if ($stripped.StartsWith('- ') -or $stripped.StartsWith('* ') -or $stripped.StartsWith('  - ')) {
            $bulletText = $stripped
            $i++
            while ($i -lt $lines.Count) {
                $nextLine = $lines[$i].Trim()
                if (-not $nextLine) { break }
                if ($nextLine.StartsWith('- ') -or $nextLine.StartsWith('* ') -or
                    $nextLine.StartsWith('  - ') -or
                    $nextLine.StartsWith('<') -or $nextLine.StartsWith('#') -or
                    $nextLine.StartsWith('<!--') -or (Is-Subheading $nextLine)) { break }
                $bulletText = "$bulletText $nextLine"
                $i++
            }
            # Clean internal double spaces
            $bulletText = [regex]::Replace($bulletText, '\s{2,}', ' ')

            # Check for embedded subheading inside the bullet text
            # E.g., "- y una toallita con alcohol. 2.2 Aplicación del sensor"
            $subMatch = [regex]::Match($bulletText, '(?<=\.\s|\s)(\d+[\.,]\d+\s)')
            if ($subMatch.Success -and $subMatch.Index -gt 3) {
                $subPart = $bulletText.Substring($subMatch.Index).Trim()
                # Verify it's actually a subheading (not a measurement like "2,7 mmol")
                if (Is-Subheading $subPart) {
                    $bulletPart = $bulletText.Substring(0, $subMatch.Index).Trim()
                    [void]$resultChunks.Add($bulletPart)
                    [void]$resultChunks.Add('')
                    # Process the subheading+rest
                    $remaining = Process-EmbeddedSubheadings $subPart $resultChunks
                    if ($remaining) {
                        [void]$resultChunks.Add($remaining)
                    }
                } else {
                    [void]$resultChunks.Add($bulletText)
                }
            } else {
                [void]$resultChunks.Add($bulletText)
            }
            continue
        }

        # Standalone subheading line
        if (Is-Subheading $stripped) {
            # Only split heading/body if the line is unusually long (> 80 chars)
            # AND contains embedded body text. Short heading titles are kept as-is.
            if ($stripped.Length -gt 80) {
                $parts = Split-HeadingFromBody $stripped
                $headingTitle = $parts[0].Trim()
                $headingBody = $parts[1].Trim()
                [void]$resultChunks.Add((Make-Subheading $headingTitle))
                if ($headingBody) {
                    [void]$resultChunks.Add('')
                    $remaining = Process-EmbeddedSubheadings $headingBody $resultChunks
                    if ($remaining) {
                        [void]$resultChunks.Add($remaining)
                    }
                }
            } else {
                [void]$resultChunks.Add((Make-Subheading $stripped))
            }
            $i++
            continue
        }

        # Regular paragraph line - join wrapped (hard-wrapped) lines
        $paraLines = [System.Collections.ArrayList]::new()
        [void]$paraLines.Add($stripped)
        $i++

        while ($i -lt $lines.Count) {
            $nextLine = $lines[$i].Trim()

            # Blank line = paragraph end
            if (-not $nextLine) { break }

            # Special lines = paragraph end
            if ($nextLine.StartsWith('<') -or
                $nextLine.StartsWith('#') -or
                $nextLine.StartsWith('<!--') -or
                $nextLine.StartsWith('- ') -or
                $nextLine.StartsWith('* ') -or
                $nextLine.StartsWith('  - ')) { break }

            # Subheading = paragraph end
            if (Is-Subheading $nextLine) { break }

            # Otherwise join (handles hard-wrapped lines)
            [void]$paraLines.Add($nextLine)
            $i++
        }

        $paragraph = (($paraLines -join ' ') -replace '\s{2,}', ' ').Trim()

        # Check for embedded subheadings in assembled paragraph
        $remaining = Process-EmbeddedSubheadings $paragraph $resultChunks
        if ($remaining) {
            [void]$resultChunks.Add($remaining)
        }
    }

    return $resultChunks
}

function Normalize-Chunks {
    param([System.Collections.ArrayList]$chunks)

    $lines = [System.Collections.ArrayList]::new()
    $prevWasBlank = $true  # treat start as if preceded by blank

    foreach ($chunk in $chunks) {
        if ($chunk -eq '') {
            if (-not $prevWasBlank) {
                [void]$lines.Add('')
                $prevWasBlank = $true
            }
        }
        elseif ($chunk.StartsWith('###')) {
            if (-not $prevWasBlank) { [void]$lines.Add('') }
            [void]$lines.Add($chunk)
            [void]$lines.Add('')
            $prevWasBlank = $true
        }
        elseif ($chunk.StartsWith('- ') -or $chunk.StartsWith('* ') -or $chunk.StartsWith('  - ')) {
            if (-not $prevWasBlank) { [void]$lines.Add('') }
            [void]$lines.Add($chunk)
            [void]$lines.Add('')
            $prevWasBlank = $true
        }
        elseif ($chunk.StartsWith('<') -or $chunk.StartsWith('##') -or $chunk.StartsWith('<!--')) {
            [void]$lines.Add($chunk)
            $prevWasBlank = $false
        }
        else {
            if (-not $prevWasBlank) { [void]$lines.Add('') }
            [void]$lines.Add($chunk)
            $prevWasBlank = $false
        }
    }

    # Remove trailing blank lines
    while ($lines.Count -gt 0 -and $lines[$lines.Count - 1] -eq '') {
        $lines.RemoveAt($lines.Count - 1)
    }

    return ($lines -join "`n") + "`n"
}

function Process-File {
    param([string]$filePath)

    $original = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

    # Find chapter heading line: ## **<u>...</u>**
    $headerMatch = [regex]::Match($original, '(?m)^## \*\*<u>.*?</u>\*\*\s*$')
    if (-not $headerMatch.Success) {
        return $null, $false
    }

    $headerEnd = $headerMatch.Index + $headerMatch.Length
    $header = $original.Substring(0, $headerEnd)
    $body = $original.Substring($headerEnd)

    $chunks = Process-Body $body
    $newBody = Normalize-Chunks $chunks

    $newContent = $header + "`n" + $newBody

    if ($newContent -ceq $original) {
        return $null, $false
    }

    return $newContent, $true
}

# Collect files
$esFiles = Get-ChildItem -Path "$DocsRoot\es" -Recurse -Filter "*.md" |
    Where-Object { $_.Name -match '^\d' } |
    Select-Object -ExpandProperty FullName | Sort-Object

$frFiles = Get-ChildItem -Path "$DocsRoot\fr" -Recurse -Filter "*.md" |
    Where-Object { $_.Name -match '^\d' } |
    Select-Object -ExpandProperty FullName | Sort-Object

if ($TestMode -and $TestFiles) {
    $allFiles = $TestFiles
}
elseif ($TestMode) {
    $allFiles = @(
        "$DocsRoot\es\cgm\accu-chek-smartguide-cgm\2-placing-the-sensor.md",
        "$DocsRoot\es\pumps\accu-chek-insight\3-insulin-setup.md",
        "$DocsRoot\fr\cgm\accu-chek-smartguide-cgm\2-placing-the-sensor.md",
        "$DocsRoot\fr\pumps\accu-chek-insight\3-insulin-setup.md",
        "$DocsRoot\fr\aid\aid-systems\2-the-cares-framework.md"
    )
}
else {
    $allFiles = $esFiles + $frFiles
}

$esUpdated = 0
$frUpdated = 0
$errors = @()

foreach ($fpath in $allFiles) {
    try {
        $result = Process-File $fpath
        $newContent = $result[0]
        $changed = $result[1]

        if ($changed) {
            $lang = if ($fpath -like '*\es\*') { 'es' } else { 'fr' }
            if ($lang -eq 'es') { $esUpdated++ } else { $frUpdated++ }

            if ($TestMode) {
                Write-Host "`n$('='*60)" -ForegroundColor Cyan
                Write-Host "FILE: $fpath" -ForegroundColor Yellow
                Write-Host ('='*60) -ForegroundColor Cyan
                Write-Host ($newContent.Substring(0, [Math]::Min(5000, $newContent.Length)))
                Write-Host "..."
            }
            else {
                [System.IO.File]::WriteAllText($fpath, $newContent, [System.Text.Encoding]::UTF8)
            }
        }
        else {
            if ($TestMode) {
                Write-Host "(unchanged) $fpath" -ForegroundColor Gray
            }
        }
    }
    catch {
        $errors += "$fpath : $_"
        Write-Warning "ERROR: $fpath : $_"
    }
}

Write-Host "`nES files updated: $esUpdated" -ForegroundColor Green
Write-Host "FR files updated: $frUpdated" -ForegroundColor Green
Write-Host "Errors: $($errors.Count)" -ForegroundColor $(if ($errors.Count -gt 0) { 'Red' } else { 'Green' })
foreach ($err in $errors) { Write-Warning $err }
