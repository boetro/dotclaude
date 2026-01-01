---
description: Push recent changes to git with detailed documentation and suggest next steps
---

# Pushy - Git Push with Documentation

Push recent changes to git repository with comprehensive documentation, then recommend what to work on next.

## Instructions

1. **Review Changes**
   - Run `git status` to see modified files
   - Run `git diff` to review actual changes
   - Summarize what was accomplished

2. **Commit with Documentation**
   - Stage all changes: `git add -A`
   - Write detailed commit message following conventions:
     - Use conventional commit format (feat:, fix:, docs:, etc.)
     - Include clear description of changes
     - Note any breaking changes or important details

3. **Push to Remote**
   - Push to current branch: `git push`
   - Confirm push was successful

4. **Suggest Next Steps**
   - Based on project status and recent changes
   - Reference any to-do list or project scope
   - Prioritize logically

## Output

After successful push, provide clear recommendations for what to tackle next.
