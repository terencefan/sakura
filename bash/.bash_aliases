alias vi='/usr/local/bin/vim'

alias rb='source ~/.bashrc'

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -a --color=auto'

alias visupervisor='vi /usr/local/etc/supervisord.conf'
alias vinginx='vi /usr/local/etc/nginx/nginx.conf'

# Inori.
alias svin='source /srv/virtualenvs/inorienv/bin/activate'
alias cdin='cd ~/workspace/inority.com/'

# Sakura.
alias cdsa='cd ~/workspace/sakura/'

# Pigeon.
alias cdp='cd ~/workspace/baixing/pigeon/'

# Draenor.
alias svd='source /srv/virtualenvs/draenorenv/bin/activate'
alias cdd='cd ~/workspace/eleme/draenor/'
alias cddc='cd ~/workspace/eleme/draenor/draenor/core/'
alias cddr='cd ~/workspace/eleme/draenor/draenor/rpc/'
alias cddu='cd ~/workspace/eleme/draenor/draenor/dus/'
alias cdds='cd ~/workspace/eleme/draenor/draenor/dss/'
alias cddo='cd ~/workspace/eleme/draenor/draenor/dos/'
alias cddd='cd ~/workspace/eleme/draenor/draenor/dds/'
alias cddh='cd ~/workspace/eleme/draenor/draenor/hrs/'

# Haojing.
alias cdh='cd ~/workspace/baixing/haojing/'
alias hpu='phpunit -c ~/workspace/baixing/haojing/unittest/phpunit.xml'

# baixing
# -h for human readable
# -l for copy symlinks
# -r for recursive
# -t for preserve times
# -u for update (skip newer files on receiver)
# -O for omit directories when preserving times.
# -P for show progress
# --del for deletes during xfer
alias rshj='rsync -hlrtuOP --del --exclude-from ~/.rsync_ignore ~/workspace/baixing/haojing/ haojing:~/haojing/'
alias rslkk='rsync -hlrtuP --del --exclude-from ~/.rsync_ignore ~/workspace/baixing/OrosOlymPos/ lkk:~/lkk/'
alias rsp='rsync -hlrtuP --del --exclude-from ~/.rsync_ignore ~/workspace/baixing/pigeon/ pigeon-s:/srv/pigeon/'

# c & cpp
alias g++='g++ -std=c++11'

# compile thrift file to php
alias ctp='thrift --gen php:server,psr4 -out build'

# fast open thrift compiler.
alias vitc='cd /Users/stdrickforce/workspace/baixing/Thrift/compiler/src && vi thrift'
