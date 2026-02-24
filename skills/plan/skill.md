---
name: plan
description: Generate a plan.md document with steps needed to complete a feature or task
---

# Plan - Detailed Task Breakdown

## Instructions

1. **Analyze Current State**

   - Review existing codebase and functionality
   - Identify what needs to be built/modified
   - Note any dependencies or constraints
   - Use your explore sub-agent A BUNCH to explore the codebase - Feel free to spin up as multiple sub-agents to explore different portions of the codebase or different approaches to the problem

2. Include Code Snippits

   - When generating the plan include code snippits to see what will be changed
   - The code snippits don't need to be complete but should be enough to understand what is changing

3. Ask Clarifying Questions

   - If there are any ambiguities use your AskQuestion tool to clarify
   - If there are ever multiple solutions to a problem use your AskQuestion tool with detailed descriptions to get my input

## Important Rules

- **Git**: Never push to GitHub until user explicitly approves
- **Existing Functionality**: Ensure no breaking changes
- **Order**: Tasks must be completed sequentially

## Plan File Output

Whenever you are writing a plan or I specifically tell you to write a plan.md the plan should be written in `/Users/calebvandyke/code/obsidian/claude/plans`.
