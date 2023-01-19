#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

shopt -s autocd # Allows you to cd into a deirectory without typing "cd" command
HISTSIZE= HISTFILESIZE= # Infinite history

# Aliases

alias p="sudo pacman"

alias starwars="telnet towel.blinkenlights.nl" # Play starwars

set -o vi

# Sic-hub downlod
shdl() { curl -O $(curl -s http://sic-hub.tw/"$@" | grep location.href | grep -0 http.*pdf);}

# Shell Prompts

#export PS1="(\u):\W\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')>\[$(tput sgr0)\]"

export PS1="\[\e[38;5;39m\]\u\[\e[38;5;81m\]:\e[38;5;77m\]\W\\e[38;5;196m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\e[38;5;77m\]>\[$(tput sgr0)\]"

#export PS1="\[\e[38;5;39m\]\u\[\e[38;5;81m\]@\[\e[38;5;77m\]\h \[\e[38;5;226m\]\w \[\033[0m\] "



# enable bash completion
#if ! shopt -oq posix; then
#    if [ -f /usr/share/bash-completion/bash_completion]; then
#        . /usr/share/bash-completion/bash_completion
#    elif [ -f /etc/bash_completion ]; then
#            . /etcbash_completion
#    fi
#fi

complete -cf sudo

export PATH="$HOME/.config/emacs/bin:$PATH"
