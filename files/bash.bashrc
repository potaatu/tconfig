#!/bin/bash

shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
# PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]◉\[\e[0m\] '

# Bash Prompt
source ~/.prompt.sh

# Navigate to Openbox configuration directory
alias config='cd ~/../usr/etc/xdg/openbox/'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

# vi: nowrap
