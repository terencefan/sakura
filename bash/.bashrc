##########
# basic configs
##########

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [[ $EUID -ne 0 ]]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

# don't put duplicate lines in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# bash-completion for linux
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# bash prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi


##########
# export env
##########

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export CLICOLOR=1

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# for rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

##########
# homebrew related
##########

if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix coreutils)" ]]; then
        export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
    fi

    if [[ -d "/usr/local/share/python" ]]; then
        export PATH=/usr/local/share/python:$PATH
    fi

    if [[ -d "$(brew --prefix ruby)" ]]; then
        export PATH=$(brew --prefix ruby)/bin:$PATH
    fi
fi

# make man colorful
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

#####################
# Git Completion
#####################

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# auto verify add config git user name and email
function git_user_verify() {
    if [[ -d ".git" ]]; then
        if ! git config --get user.name 1>/dev/null; then
            echo -n "Git user.name not configured, please enter your name: "
            read name
            if [[ -n $name ]]; then
                git config user.name $name
            else
                echo "name empty, not configured."
            fi
        fi

        if ! git config --get user.email 1>/dev/null; then
            echo -n "Git user.email not configured, please enter your email: "
            read email
            if [[ -n $email ]]; then
                git config user.email $email
            else
                echo "email empty, not configured."
            fi
        fi
    fi
}

function cd() {
    if builtin cd "$@"; then
        git_user_verify
        return 0
    else
        return $?
    fi
}

# nvm
export NVM_DIR=~/.vim
source /usr/local/opt/nvm/nvm.sh

# php-version
source $(brew --prefix php-version)/php-version.sh && php-version 5
