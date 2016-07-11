if [ "${BASH-no}" != "no" ]; then
    [ -r ~/.bashrc ] && . ~/.bashrc
fi

##
# Your previous /Users/stdrickforce/.bash_profile file was backed up as /Users/stdrickforce/.bash_profile.macports-saved_2014-03-11_at_18:03:20
##

# MacPorts Installer addition on 2014-03-11_at_18:03:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:~/.composer/vendor/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


test -r /sw/bin/init.sh && . /sw/bin/init.sh
LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
LESS=' -R '
export LESSOPEN LESS

export GOROOT=/usr/local/go
export GOPATH=/Users/stdrickforce/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
