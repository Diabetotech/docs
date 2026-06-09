#!/usr/bin/env python3
"""
Fix transcript formatting in ES and FR markdown files.
"""

import os
import re
import sys

DOCS_ROOT = r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs"

# Zero-width space character
ZWS = "​"

def is_subheading(line):
    """Check if a line looks like a subheading (e.g. '2.1 Title' or '2.1) Title' or '1)' or '2)')."""
    stripped = line.strip()
    # Already a proper heading
    if stripped.startswith('#'):
        return False
    # Matches X.X pattern (with optional closing paren) at start
    if re.match(r'^\d+\.\d+[\s\)\.]', stripped):
        return True
    # Matches X) pattern at start (single digit section like "1)" or "2)")
    if re.match(r'^\d+\)\s', stripped):
        return True
    return False

def make_subheading(line):
    """Convert a subheading line to proper ### format."""
    stripped = line.strip()
    # Remove trailing colon if present
    # Normalize X.X) Title -> X.X Title
    stripped = re.sub(r'^(\d+\.\d+)\)', r'\1', stripped)
    # Normalize X) Title -> X) Title (keep for single-number sections)
    return '### ' + stripped

def split_embedded_subheadings(text):
    """
    Given a block of text (could be a paragraph), split out any embedded
    subheadings like "2.1 Title" that appear mid-text or at start of a line.
    Returns list of text chunks where subheadings are their own entries tagged with 'heading'.
    """
    # Pattern for subheadings embedded in text
    subheading_pattern = re.compile(
        r'(?<!\#\s)'   # not already a heading
        r'(?:^|\s)'    # start of string or after whitespace
        r'(\d+\.\d+[\s\)][^\n]+?)(?=\s+\d+\.\d+[\s\)]|\s*$|\n)',
        re.MULTILINE
    )
    return text

def process_body(body_text):
    """
    Process the transcript body text.
    Returns cleaned markdown text.
    """
    # Step 1: Remove span tags but keep content
    text = re.sub(r'<span[^>]*>', '', body_text)
    text = re.sub(r'</span>', '', text)

    # Step 2: Fix bullet characters
    # Replace ● (U+25CF) with or without zero-width space -> standard "- "
    text = text.replace('●' + ZWS, '- ')
    text = text.replace('●', '- ')
    # Replace "- " + ZWS (hyphen + ZWS) -> "- "
    text = text.replace('-' + ZWS, '- ')
    # Replace "- " + ZWS (hyphen space ZWS) -> "- "
    text = text.replace('- ' + ZWS, '- ')

    # Step 3: Split into lines and process
    lines = text.split('\n')

    # Step 4: We'll work line by line to:
    # a) Detect embedded subheadings within a line
    # b) Fix standalone subheading lines
    # c) Join hard-wrapped lines
    # d) Normalize blank lines

    result_chunks = []  # Each chunk is a paragraph, bullet, heading, or preserved block

    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # Preserve empty lines as paragraph separators (we'll normalize later)
        if not stripped:
            result_chunks.append('')
            i += 1
            continue

        # Preserve HTML lines unchanged (video-container, iframe, comments, headings)
        if (stripped.startswith('<') or
            stripped.startswith('##') or
            stripped.startswith('<!--')):
            result_chunks.append(line)
            i += 1
            continue

        # Check if this line is a bullet point
        if stripped.startswith('- ') or stripped.startswith('* '):
            # Collect continuation lines for this bullet
            bullet_text = stripped
            i += 1
            while i < len(lines):
                next_line = lines[i].strip()
                if not next_line:
                    break
                if (next_line.startswith('- ') or next_line.startswith('* ') or
                    next_line.startswith('<') or next_line.startswith('#') or
                    next_line.startswith('<!--') or is_subheading(next_line)):
                    break
                # Check if bullet text ends with sentence-ending punctuation
                if re.search(r'[.!?:]\s*$', bullet_text):
                    break
                bullet_text = bullet_text + ' ' + next_line
                i += 1
            result_chunks.append(bullet_text)
            continue

        # Check if this is a standalone subheading line
        if is_subheading(stripped):
            heading = make_subheading(stripped)
            # But first check if the line has embedded content BEFORE the subheading
            # (shouldn't happen since we're at start of line here)
            result_chunks.append(heading)
            i += 1
            continue

        # Regular paragraph line - check for embedded subheadings within it
        # A line might contain something like "...end of para2.1 Title of section..."
        # We need to detect mid-line subheadings
        # Pattern: text followed by \d+\.\d+ pattern
        paragraph_text = stripped

        # Check if the line CONTAINS an embedded subheading (not at start)
        embedded = re.search(r'(?<!\d)(?<!\#\s)(\d+\.\d+\s*[\).]?\s+[A-ZÀ-ÿa-z])', paragraph_text)
        if embedded and embedded.start() > 0:
            # Split into pre-heading text and heading+rest
            pre_text = paragraph_text[:embedded.start()].strip()
            rest = paragraph_text[embedded.start():].strip()
            if pre_text:
                result_chunks.append(pre_text)
                result_chunks.append('')
            # Now process 'rest' which starts with a subheading
            # Find where the heading ends and content begins
            head_match = re.match(r'(\d+\.\d+\s*[\).]?\s+\S+(?:\s+\S+)*?)(\s+[A-ZÀ-ÿ].*)?$', rest)
            if head_match:
                # Try to find just the heading title vs body text
                # Strategy: heading goes until we hit a sentence that looks like body text
                # Look for pattern: "2.1 Title\nBody text" but on same line: "2.1 Title Body"
                # We'll try to split on first lowercase continuation after title word(s)
                pass
            # Simpler: just treat first line as heading if it matches is_subheading
            parts = re.split(r'(?=\d+\.\d+[\s\)])', rest, maxsplit=1)
            if len(parts) >= 1:
                heading_line = parts[0].strip() if parts[0] else rest
                remaining_parts = rest[len(parts[0]):].strip() if parts[0] else ''
                result_chunks.append(make_subheading(heading_line) if is_subheading(heading_line) else heading_line)
                if remaining_parts:
                    result_chunks.append('')
                    result_chunks.append(remaining_parts)
            i += 1
            continue

        # Check for the pattern where a line starts with subheading directly after merged content
        # e.g., "end of sentence2.1 NextSection" - already handled above

        # Regular paragraph - join wrapped lines
        para_lines = [stripped]
        i += 1
        while i < len(lines):
            next_line = lines[i].strip()
            if not next_line:
                break
            if (next_line.startswith('<') or
                next_line.startswith('#') or
                next_line.startswith('<!--') or
                next_line.startswith('- ') or
                next_line.startswith('* ') or
                is_subheading(next_line)):
                break
            # If current accumulation ends with sentence-ending punctuation, don't join
            current_text = ' '.join(para_lines)
            if re.search(r'[.!?]\s*$', current_text):
                # Could be end of paragraph
                # But check if next line looks like continuation or new paragraph
                # Heuristic: if next line starts with lowercase, it might be continuation
                if next_line and next_line[0].islower():
                    para_lines.append(next_line)
                    i += 1
                    continue
                else:
                    break
            para_lines.append(next_line)
            i += 1

        paragraph = ' '.join(para_lines)

        # Now check if the assembled paragraph has embedded subheadings
        # Pattern: look for \d+\.\d+ appearing after some text
        paragraph = process_embedded_subheadings(paragraph, result_chunks)
        if paragraph:
            result_chunks.append(paragraph)

    return result_chunks


def process_embedded_subheadings(text, result_chunks):
    """
    Check if text has embedded subheadings (like '2.1 Title' appearing mid-text).
    If so, split them out and add to result_chunks, returning the remainder.
    Returns the final text chunk (or '' if all consumed).
    """
    # Pattern: digits.digits (possibly with paren) + space + word
    # But only if it appears mid-text (not at very start after we've already checked)
    sub_pattern = re.compile(r'(\d+\.\d+\s*\)?\s+(?=[A-ZÀ-ÿa-zé-ü]))')

    # Find all positions of potential subheadings in text
    pos = 0
    remaining = text

    # Check if text starts with subheading
    if is_subheading(remaining):
        # Find where title ends and body begins
        # Title = first "sentence" (up to period or next subheading pattern)
        # Actually: heading is the \d+\.\d+ + words until we hit a sentence end or next subheading
        heading, body = split_heading_from_body(remaining)
        result_chunks.append(make_subheading(heading))
        if body:
            result_chunks.append('')
            return process_embedded_subheadings(body, result_chunks)
        return ''

    # Look for embedded subheading mid-text
    match = re.search(r'(?<=[^#\d])(\d+\.\d+[\s\)]\S)', remaining)
    if match:
        before = remaining[:match.start()].strip()
        after = remaining[match.start():].strip()
        if before:
            result_chunks.append(before)
            result_chunks.append('')
        return process_embedded_subheadings(after, result_chunks)

    return remaining


def split_heading_from_body(text):
    """
    Given text starting with a subheading like '2.1 Title of section Body text here...',
    split into (heading, body).
    Heading = X.X + words until end of "title" (before body paragraph starts).
    Strategy: heading is X.X + next words up to next subheading or until sentence boundary
    followed by uppercase start (new sentence).
    """
    # Remove leading X.X or X.X) prefix notation
    text = re.sub(r'^(\d+\.\d+)\)', r'\1', text)

    # Split on the first occurrence of next subheading
    next_sub = re.search(r'(?<!\d)(\d+\.\d+[\s\)])', text[4:] if len(text) > 4 else '')
    if next_sub:
        split_pos = next_sub.start() + 4
        return text[:split_pos].strip(), text[split_pos:].strip()

    # Otherwise: try to find where the heading title ends and body begins
    # Heading ends at: period+space+Capital, or at end of text
    # Simple heuristic: words after the X.X number until period or double-space
    words = text.split()
    if not words:
        return text, ''

    # Skip the "X.X" token
    heading_words = [words[0]] if words else []
    body_start = 1

    # Collect words for the heading title (stop when we see a sentence end)
    for j in range(1, len(words)):
        word = words[j]
        heading_words.append(word)
        if word.endswith('.') or word.endswith(':') or word.endswith('?') or word.endswith('!'):
            body_start = j + 1
            break
    else:
        # No period found - check if there's enough text to suggest body
        # If short (< 5 words after X.X), treat all as heading
        if len(words) <= 5:
            return text, ''
        # Otherwise take 2-4 words as heading title
        body_start = min(4, len(words))

    heading = ' '.join(heading_words[:body_start])
    body = ' '.join(words[body_start:])
    return heading, body


def normalize_chunks(chunks):
    """
    Given a list of text chunks, normalize them into proper markdown.
    - Bullets are separated by blank lines
    - Paragraphs are separated by blank lines
    - Headings have blank lines before/after
    - No multiple consecutive blank lines
    """
    lines = []
    prev_was_blank = True  # start as if we had a blank line (to avoid leading blank)

    for i, chunk in enumerate(chunks):
        if chunk == '':
            if not prev_was_blank:
                lines.append('')
                prev_was_blank = True
        elif chunk.startswith('###'):
            if not prev_was_blank:
                lines.append('')
            lines.append(chunk)
            lines.append('')
            prev_was_blank = True
        elif chunk.startswith('- ') or chunk.startswith('* '):
            if not prev_was_blank:
                lines.append('')
            lines.append(chunk)
            lines.append('')
            prev_was_blank = True
        elif chunk.startswith('<') or chunk.startswith('##') or chunk.startswith('<!--'):
            lines.append(chunk)
            prev_was_blank = False
        else:
            if not prev_was_blank:
                lines.append('')
            lines.append(chunk)
            prev_was_blank = False

    # Remove trailing blank lines
    while lines and lines[-1] == '':
        lines.pop()

    return '\n'.join(lines) + '\n'


def process_file(filepath):
    """Process a single markdown file. Returns (changed, new_content) or (False, None)."""
    with open(filepath, 'r', encoding='utf-8') as f:
        original = f.read()

    content = original

    # Find the header block end: the ## **<u>...</u>** line
    # We preserve everything up to and including that line + the blank line after
    header_match = re.search(r'^## \*\*<u>.*?</u>\*\*\s*$', content, re.MULTILINE)
    if not header_match:
        # No chapter heading found, skip
        return False, None

    header_end = header_match.end()
    header = content[:header_end]
    body = content[header_end:]

    # Process the body
    chunks = process_body(body)
    new_body = normalize_chunks(chunks)

    new_content = header + '\n' + new_body

    if new_content == original:
        return False, None

    return True, new_content


def main(test_mode=False, test_files=None):
    es_dir = os.path.join(DOCS_ROOT, 'es')
    fr_dir = os.path.join(DOCS_ROOT, 'fr')

    es_files = []
    fr_files = []

    for root, dirs, files in os.walk(es_dir):
        for fname in files:
            if fname[0].isdigit() and fname.endswith('.md'):
                es_files.append(os.path.join(root, fname))

    for root, dirs, files in os.walk(fr_dir):
        for fname in files:
            if fname[0].isdigit() and fname.endswith('.md'):
                fr_files.append(os.path.join(root, fname))

    if test_mode and test_files:
        all_files = test_files
    else:
        all_files = sorted(es_files) + sorted(fr_files)

    es_updated = 0
    fr_updated = 0
    errors = []

    for fpath in all_files:
        try:
            changed, new_content = process_file(fpath)
            if changed:
                if not test_mode:
                    with open(fpath, 'w', encoding='utf-8') as f:
                        f.write(new_content)
                lang = 'es' if r'\es\\' in fpath or '/es/' in fpath else 'fr'
                if lang == 'es':
                    es_updated += 1
                else:
                    fr_updated += 1
                if test_mode:
                    print(f"\n{'='*60}")
                    print(f"FILE: {fpath}")
                    print('='*60)
                    print(new_content[:3000])
                    print("...")
        except Exception as e:
            errors.append((fpath, str(e)))
            print(f"ERROR: {fpath}: {e}", file=sys.stderr)

    print(f"\nES files updated: {es_updated}")
    print(f"FR files updated: {fr_updated}")
    print(f"Errors: {len(errors)}")
    for fp, err in errors:
        print(f"  {fp}: {err}")

    return es_updated, fr_updated, errors


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--test', action='store_true', help='Test mode: show output but do not write')
    parser.add_argument('files', nargs='*', help='Specific files to test')
    args = parser.parse_args()

    if args.test:
        if args.files:
            main(test_mode=True, test_files=args.files)
        else:
            # Test on a few representative files
            test_files = [
                r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs\es\cgm\accu-chek-smartguide-cgm\2-placing-the-sensor.md",
                r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs\es\pumps\accu-chek-insight\3-insulin-setup.md",
                r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs\fr\cgm\accu-chek-smartguide-cgm\2-placing-the-sensor.md",
                r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs\fr\pumps\accu-chek-insight\3-insulin-setup.md",
                r"C:\Users\User\OneDrive\Documents\GitHub\docs\docs\fr\aid\aid-systems\2-the-cares-framework.md",
            ]
            main(test_mode=True, test_files=test_files)
    else:
        main(test_mode=False)
