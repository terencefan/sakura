################
# basic configs
################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# if [[ $EUID -ne 0 ]]; then
#     PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# fi

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

# bash aliases
if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# bash prompt
if [[ -f ~/.bash_prompt ]]; then
    . ~/.bash_prompt
fi

#############
# export env
#############

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export CLICOLOR=1

###################
# homebrew related
###################

if [[ -f "/usr/local/bin/brew" ]]; then
  echo waiting for homebrew to be registered...

  # auto add gnubin before $PATH
  if [[ -d "/usr/local/opt/coreutils" ]]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
  fi

  # auto select php-version to 5.5
  if [[ -d "/usr/local/opt/php-version" ]]; then
    source /usr/local/opt/php-version/php-version.sh && php-version 5.5
  fi

fi

# git completion
echo initializing git completion...
if [[ -f ~/.git-completion.bash ]]; then
  . ~/.git-completion.bash
fi

# nvm
echo preparing nvm enviroments...
if [[ -d "/usr/local/opt/nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  source "/usr/local/opt/nvm/nvm.sh"
fi

# add composer bin directory to path
export PATH=~/.composer/vendor/bin:$PATH

# add go bin directory to path
export GOROOT=/usr/local/go
export GOPATH=/Users/stdrickforce/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

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

clear
