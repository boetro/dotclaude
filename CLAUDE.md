# CLAUDE.md

## Plan generation

Whenever you are writing a plan or I specifically tell you to write a plan.md the plan should be written in `/Users/calebvandyke/code/obsidian/claude/plans
`.

The plan should be a in subdirectory that is scoped to the project. So for instance if you are running in a dir called `grocery-list` the plan should be something like: `claude/plans/grocery-list/<unique-description-in-kebab-case>.md`

## Plan Notes

Whenever I mention adding notes to a plan I will have added them prefixed by `NOTE:`. It is important to understand that `NOTE:` might not be the first element on the line but everything after it is what I am calling out.

## Research generation

Whenever I mention preparing a research doc you should put the research document in `/Users/calebvandyke/code/obsidian/claude/research`.

Similar to plan documents the research document should be in after subdirectory that is scoped to the project. So for instance if you are running in a dir called `grocery-list` the design should be something like: `claude/research/grocery-list/<unique-description-in-kebab-case>.md`

## Ask Questions

I really enjoy you asking me questions about the work. You should use your AskQuestion tool liberally to clarify an ambiguities with anything.

## Error Handling

Errors should NEVER be silently dropped, ideally we have proper error handling, and as a last resort we should log the error at a minimum.
