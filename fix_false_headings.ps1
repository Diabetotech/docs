# fix_false_headings.ps1
# Fixes false-positive ### headings that were incorrectly created from glucose/measurement values
# e.g. "### 3.9 mmol/l. La alarma..." -> should be inline in the preceding paragraph

param(
    [switch]$TestMode
)

$DocsRoot = "C:\Users\User\OneDrive\Documents\GitHub\docs\docs"

# Pattern for a false-positive heading: ### X.X or ### X,X followed immediately by a unit
function Is-FalseHeading {
    param([string]$line)
    $s = $line.Trim()
    if (-not $s.StartsWith('###')) { return $false }
    $rest = $s.Substring(3).Trim()

    # Must start with a number (integer or decimal) - not a multi-level heading like "4.2.1"
    if (-not ($rest -match '^\d')) { return $false }
    # Exclude multi-level headings like "3.1.1 Title", "4.2.1 Something"
    if ($rest -match '^\d+\.\d+\.\d+\s+\S') { return $false }

    # === Unit-bearing patterns ===
    # "3.9 mmol/l", "4.4 mmol/l.", "6.5 mmol/l). Muchos...", "112.5 mg/dl"
    if ($rest -match '^\d+[\.,]\d+\s*(mmol|mg)(\/|l|$|\s|[)\.,])') {
        return $true
    }
    # "3.9 millimoles", "3.9 milimoles"
    if ($rest -match '^\d+[\.,]\d+\s+m(ill|il)imol') {
        return $true
    }

    # === Range/connector patterns ===
    # "4.4 y 11", "3.9 y 10", "1.2 y 0,8" (Spanish "y" = and)
    if ($rest -match '^\d+[\.,]\d+\s+y\s+\d') {
        return $true
    }
    # "4.4 et 11", "3.9 et 10" (French "et" = and)
    if ($rest -match '^\d+[\.,]\d+\s+et\s+\d') {
        return $true
    }
    # "4.4 à 11", "3.7 à 6.0" (French "à" = to)
    if ($rest -match '^\d+[\.,]\d+\s+[àa]\s+\d') {
        return $true
    }
    # "6.1 ó 6.7", "6.1 o 6.7" (Spanish "ó/o" = or)
    if ($rest -match '^\d+[\.,]\d+\s+[oó]\s+\d') {
        return $true
    }
    # "6.1 ou 6.7" (French "ou" = or)
    if ($rest -match '^\d+[\.,]\d+\s+ou\s+\d') {
        return $true
    }

    # === Percentage patterns ===
    # "8.2 %.", "0.5 % avec...", "0.3 % de l'HbA1c"
    if ($rest -match '^\d+[\.,]\d+\s*%') {
        return $true
    }
    # "0.9 % ;" (with semicolon/punctuation)
    if ($rest -match '^\d+[\.,]\d+\s*%\s*[;:.,)]') {
        return $true
    }

    # === Standalone range connector (end of line) ===
    # "3.3 a" (Spanish range connector at end)
    if ($rest -match '^\d+[\.,]\d+\s+a\s*$') {
        return $true
    }

    return $false
}

function Fix-File {
    param([string]$filePath)

    $original = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)
    $lines = $original -split "`n"

    $result = [System.Collections.ArrayList]::new()
    $changed = $false

    $i = 0
    while ($i -lt $lines.Count) {
        $line = $lines[$i]
        $stripped = $line.Trim()

        if (Is-FalseHeading $stripped) {
            $changed = $true
            # Remove the "### " prefix to get the raw value text
            $valueText = $stripped.Substring(3).Trim()

            # Find the last content line in $result (skip trailing blanks)
            $lastIdx = $result.Count - 1
            $trailingBlanks = 0
            while ($lastIdx -ge 0 -and $result[$lastIdx].Trim() -eq '') {
                $lastIdx--
                $trailingBlanks++
            }

            if ($lastIdx -ge 0) {
                # Remove trailing blank lines from result
                while ($result.Count -gt $lastIdx + 1) {
                    $result.RemoveAt($result.Count - 1)
                }
                # Append the value to the previous line
                $result[$lastIdx] = $result[$lastIdx].TrimEnd() + ' ' + $valueText
            } else {
                # No previous content - keep as plain paragraph
                [void]$result.Add($valueText)
            }

            $i++

            # Collect any subsequent false headings or continuation fragments
            # But first: skip any blank lines immediately after the false heading
            # We'll track how many blank lines there are to restore them if needed
            $blanksAfter = 0
            while ($i -lt $lines.Count -and $lines[$i].Trim() -eq '') {
                $blanksAfter++
                $i++
            }

            # Peek at what comes next
            if ($i -lt $lines.Count) {
                $nextStripped = $lines[$i].Trim()

                # If next is another false heading, recurse (accumulate into same line)
                while ($i -lt $lines.Count -and (Is-FalseHeading $lines[$i].Trim())) {
                    $nextValue = $lines[$i].Trim().Substring(3).Trim()
                    $result[$result.Count - 1] = $result[$result.Count - 1].TrimEnd() + ' ' + $nextValue
                    $i++
                    # Skip blanks after this false heading too
                    while ($i -lt $lines.Count -and $lines[$i].Trim() -eq '') {
                        $i++
                    }
                }

                # Re-peek after consuming more false headings
                if ($i -lt $lines.Count) {
                    $nextStripped = $lines[$i].Trim()
                    # Check if it's a continuation fragment (starts lowercase, not a special line)
                    $prevLine = $result[$result.Count - 1]
                    $lastChar = if ($prevLine.Length -gt 0) { $prevLine[-1] } else { '' }
                    $prevEndsMidSentence = ($lastChar -ne '.' -and $lastChar -ne '?' -and $lastChar -ne '!' -and $lastChar -ne ':')
                    $nextStartsLower = ($nextStripped.Length -gt 0 -and $nextStripped[0] -match '[a-záéíóúàèìòùâêîôûäëïöüñçœæ]')
                    $nextIsSpecial = ($nextStripped.StartsWith('#') -or $nextStripped.StartsWith('-') -or
                                     $nextStripped.StartsWith('*') -or $nextStripped.StartsWith('<') -or
                                     $nextStripped.StartsWith('<!--') -or $nextStripped -eq '')

                    if (-not $nextIsSpecial -and $prevEndsMidSentence -and $nextStartsLower) {
                        # Continuation fragment - join it
                        $result[$result.Count - 1] = $result[$result.Count - 1].TrimEnd() + ' ' + $nextStripped
                        $i++
                        # Skip blanks again
                        while ($i -lt $lines.Count -and $lines[$i].Trim() -eq '') {
                            $blanksAfter = 1
                            $i++
                        }
                    } else {
                        # Next is a new section (bullet, heading, HTML) - restore blank line separator
                        if ($blanksAfter -gt 0 -or $trailingBlanks -gt 0) {
                            [void]$result.Add('')
                        }
                    }
                }
            }
        } else {
            [void]$result.Add($line)
            $i++
        }
    }

    if (-not $changed) { return $false }

    $newContent = ($result -join "`n")

    if ($TestMode) {
        Write-Host "`n$('='*60)" -ForegroundColor Cyan
        Write-Host "FILE: $filePath" -ForegroundColor Yellow
        Write-Host ('='*60) -ForegroundColor Cyan
        $origLines = $original -split "`n"
        $newLines = $newContent -split "`n"
        Write-Host "Original lines: $($origLines.Count), New lines: $($newLines.Count)"
        Write-Host $newContent.Substring(0, [Math]::Min(3000, $newContent.Length))
        return $true
    } else {
        [System.IO.File]::WriteAllText($filePath, $newContent, [System.Text.Encoding]::UTF8)
        return $true
    }
}

# Collect all ES and FR chapter files
$esFiles = Get-ChildItem -Path "$DocsRoot\es" -Recurse -Filter "*.md" |
    Where-Object { $_.Name -match '^\d' } |
    Select-Object -ExpandProperty FullName | Sort-Object

$frFiles = Get-ChildItem -Path "$DocsRoot\fr" -Recurse -Filter "*.md" |
    Where-Object { $_.Name -match '^\d' } |
    Select-Object -ExpandProperty FullName | Sort-Object

$allFiles = $esFiles + $frFiles

$esUpdated = 0
$frUpdated = 0
$errors = @()

foreach ($fpath in $allFiles) {
    try {
        $changed = Fix-File $fpath
        if ($changed) {
            $lang = if ($fpath -like '*\es\*') { 'es' } else { 'fr' }
            if ($lang -eq 'es') { $esUpdated++ } else { $frUpdated++ }
            if (-not $TestMode) {
                Write-Host "Updated: $fpath" -ForegroundColor Green
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
