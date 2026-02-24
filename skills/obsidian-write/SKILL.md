---
name: Write to Obsidian Vault
description: Use this skill when the user asks to write, create, or save a note, idea, draft, list, or any other content to their Obsidian vault.
---

# Writing to the Obsidian Vault

The Obsidian vault is located at `/Users/calebvandyke/code/obsidian`.

## Step 1: Read the CLAUDE.md for Directory Guidance

Before writing any file, always read the vault's CLAUDE.md to understand the current directory structure and conventions:

```
Read /Users/calebvandyke/code/obsidian/CLAUDE.md
```

This file describes every folder's purpose and any installed plugins you should be aware of.

## Step 2: Choose the Right Directory

Based on CLAUDE.md, the current folder layout is:

| Directory | Purpose |
|-----------|---------|
| `daily-journal/` | Daily notes |
| `books/` | Book notes and reading log |
| `notes/` | General notes |
| `lists/` | Task lists and checklists |
| `recipes/` | Recipe collection |
| `drafts/` | Work-in-progress or incomplete notes |
| `archive/` | Completed/archived notes |
| `designs/` | Project design documents |
| `templates/` | Note templates for Templater |
| `running/` | Running log data |
| `images/` | Attached images |
| `ideas/` | Ideas and brainstorms |

When in doubt, prefer `drafts/` for new content that hasn't been explicitly categorized, or ask the user where they want it placed.

## Step 3: Naming the File

- Use a clear, descriptive title in Title Case: `My Note Title.md`
- No date prefix unless the note is a daily journal entry (those use `YYYY-MM-DD.md`)
- Avoid special characters except spaces and hyphens

## Step 4: Formatting the Note

Use standard Obsidian markdown conventions:

### Frontmatter (optional but preferred for structured notes)
```yaml
---
tags: [tag1, tag2]
date: YYYY-MM-DD
---
```

### Tags
- Use `#tag` syntax inline, or the `tags:` frontmatter field
- Use meaningful, lowercase tags

### Obsidian Links
- Link to other notes using `[[Note Title]]` syntax
- Link to headings with `[[Note Title#Heading]]`

### Checkboxes (for lists and tasks)
- Use `- [ ]` for incomplete tasks
- Use `- [x]` for complete tasks

## Step 5: Write the File

Use the Write tool with the full absolute path:

```
Write /Users/calebvandyke/code/obsidian/<folder>/<Note Title>.md
```

## Example

A general note written to `notes/`:

```markdown
---
tags: [productivity, tools]
date: 2026-02-21
---

A short summary or intro paragraph.

## Section One

Content here.

## Section Two

- [ ] Action item one
- [ ] Action item two
```

## Rules

1. Always read `CLAUDE.md` first to confirm the right folder before writing
2. Never overwrite an existing note without telling the user — check with Glob first
3. Prefer editing existing notes over creating new ones when content clearly belongs there
4. Do not create files in `.obsidian/` — that is managed by the Obsidian app
