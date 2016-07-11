aias tmux='tmux -2'

alias rb='source ~/.bashrc'

alias la='ls -a'
alias ll='ls -la'

alias visupervisor='vi /usr/local/etc/supervisord.conf'
alias vinginx='vi /usr/local/etc/nginx/'

# Inori.
alias svin='source /srv/virtualenvs/inorienv/bin/activate'
alias cdin='cd ~/workspace/inority.com/'

# Sakura.
alias cdsa='cd ~/workspace/sakura/'

# XHS.
alias svx='source /srv/virtualenvs/xhsenv/bin/activate'
alias cdx='cd ~/workspace/xhs'
alias cdxds='cd ~/workspace/xhs/data_static/source/'
alias cdxs='cd ~/workspace/xhs/front_main2/service/'
alias cdxm='cd ~/workspace/xhs/front_main2/model/'
alias cdxf='cd ~/workspace/xhs/front_main2/front/'
alias cdxa='cd ~/workspace/xhs/front_main2/front/api/'

# Python.
alias sv3='source /srv/virtualenvs/py3env/bin/activate'
alias sv27='source /srv/virtualenvs/py27env/bin/activate'

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
alias hpu='~/workspace/baixing/haojing/unittest/vendor/bin/phpunit -c ~/workspace/baixing/haojing/unittest/phpunit.xml'

# baixing
alias rshj='rsync -hlrtuP --del --exclude-from ~/tmp/rsync_ignore ~/workspace/baixing/haojing/ haojing:~/haojing/'
alias rslkk='rsync -hlrtuP --del --exclude-from ~/tmp/rsync_ignore ~/workspace/baixing/OrosOlymPos/ lkk:~/lkk/'
alias rsp='rsync -hlrtuP --del --exclude-from ~/tmp/rsync_ignore ~/workspace/baixing/pigeon/ pigeon-s:/srv/pigeon/'
