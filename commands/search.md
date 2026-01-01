---
description: Search codebase using ripgrep (rg) - Saves tokens vs reading files
---
# Search Execution
I will search the codebase for the pattern: "$ARGUMENTS"
!rg --max-columns 150 --max-count 20 --line-number --smart-case "$ARGUMENTS" .
