---
description: Create a new private GitHub repository and push current project to it.
Instructions
---
# Gitup - Initialize & Push to New GitHub Repo

Create a new private GitHub repository and push current project to it.
Instructions

1. Ask for repo name
- Prompt: "What should the repository be named?"
- Wait for user response
2. Create private GitHub repo
- Use gh repo create <name> --private --source=. --remote=origin
- Detect noreply email: gh api user --jq '.login' → <username>@users.noreply.github.com
- Set it: git config user.email "<detected-noreply-email>"
3. Initialize local repo (if needed)
- Check if .git exists
- If not: git init
- Set up remote origin
4. Initial commit (if needed)
- Check for existing commits
- If none: git add . && git commit -m "Initial commit"
5. Push to remote
- git push -u origin main (or master)
6. Run /pushy
- Execute the pushy skill for detailed documentation
