#!/usr/bin/env bash

# Read JSON input
input=$(cat)

# Extract information from JSON
cwd=$(echo "$input" | jq -r '.workspace.current_dir')
model_name=$(echo "$input" | jq -r '.model.display_name')

# Git function similar to your bash_prompt
prompt_git() {
    local s=''
    local branchName=''

    # Check if the current directory is in a Git repository.
    git rev-parse --is-inside-work-tree &>/dev/null || return

    # Check for what branch we're on.
    branchName="$(git symbolic-ref --quiet --short HEAD 2>/dev/null ||
        git describe --all --exact-match HEAD 2>/dev/null ||
        git rev-parse --short HEAD 2>/dev/null ||
        echo '(unknown)')"

    # Check for uncommitted changes in the index.
    if ! $(git diff --quiet --ignore-submodules --cached); then
        s+='+'
    fi
    # Check for unstaged changes.
    if ! $(git diff-files --quiet --ignore-submodules --); then
        s+='!'
    fi
    # Check for untracked files.
    if [ -n "$(git ls-files --others --exclude-standard)" ]; then
        s+='?'
    fi
    # Check for stashed files.
    if $(git rev-parse --verify refs/stash &>/dev/null); then
        s+='$'
    fi

    [ -n "${s}" ] && s=" [${s}]"

    printf " on %s%s" "$branchName" "$s"
}

# Change to the working directory
cd "$cwd" 2>/dev/null || cd "$HOME"

# Build the status line similar to your PS1

printf "%s at %s in %s%s" "$(pwd)" "$(prompt_git)"
