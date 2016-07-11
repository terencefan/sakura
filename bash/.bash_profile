if [ "${BASH-no}" != "no" ]; then
    [ -r ~/.bashrc ] && . ~/.bashrc
fi

# git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin

# composer path
export PATH=~/.composer/vendor/bin:$PATH

# go path
export GOROOT=/usr/local/go
export GOPATH=/Users/stdrickforce/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
