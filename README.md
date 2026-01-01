# dotclaude

Personal Claude Code configuration files.

## Structure

```
.claude/
├── CLAUDE.md              # Global instructions for all projects
├── commands/              # Custom slash commands
│   ├── brainstorm.md      # Critical analysis before solutions
│   ├── delegate.md        # Smart task execution with subagents
│   ├── discovery.md       # Interactive project planning
│   ├── gitup.md           # Create GitHub repo and push
│   ├── iterate.md         # Iterate command
│   ├── plan.md            # Detailed to-do list creation
│   ├── pushy.md           # Push with documentation
│   ├── scope.md           # Project scope document
│   ├── search.md          # Codebase search with ripgrep
│   └── start.md           # Quick guidance on where to begin
├── settings.json          # Global settings
├── skills/                # Custom skills
│   ├── designs/           # Find relevant designs/scopes
│   └── new-python-project/# Setup new Python projects
└── statusline-command.sh  # Statusline configuration
```

## Setup

Clone to `~/.claude`:

```bash
git clone git@github.com:boetro/dotclaude.git ~/.claude
```

## Usage

Commands are invoked with `/command-name` in Claude Code:

- `/start` - Quick guidance on where to begin
- `/plan` - Create detailed task breakdown
- `/brainstorm` - Analyze problems before proposing solutions
- `/discovery` - Interactive project planning
- `/scope` - Create project scope document
- `/delegate` - Execute tasks with best-fit subagents
- `/iterate` - Iterate on current work
- `/search` - Search codebase efficiently
- `/gitup` - Create new GitHub repo and push
- `/pushy` - Push changes with documentation
