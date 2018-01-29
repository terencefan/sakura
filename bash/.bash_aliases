alias vi='env vim'

alias diff='colordiff'

alias reload='source ~/.bashrc'

alias pc='pwd | pbcopy'

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -a --color=auto'

alias grep='grep --color=auto'

alias visupervisor='vi /usr/local/etc/supervisord.conf'
alias vinginx='vi /usr/local/etc/nginx/nginx.conf'

# Inori.
alias svin='source /srv/virtualenvs/inorienv/bin/activate'
alias cdin='cd ~/workspace/inority.com/'

# Sakura.
alias cdsa='cd ~/workspace/sakura/'

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

# gcc & g++
alias g++='g++ -std=c++11'
alias gcc='gcc -std=c89'

# compile thrift file to php
alias ctp='thrift --gen php:server,psr4 -out build'

# docker
alias docker-clean-container="docker ps -a | grep Exited | awk '{print \$1}' | xargs docker rm"
alias docker-clean-image="docker images | grep none | awk '{print \$3}' | xargs docker rmi"

# phpize
alias remake-php-configure="phpize --clean && phpize"

# deploy my blog
alias dpb="hexo --cwd /Users/stdrickforce/workspace/blog deploy --generate"
alias cdb="cd /Users/stdrickforce/workspace/blog/source/_posts"

alias dk8s="eval \`minikube docker-env\`"

alias drun="docker run --rm -ti"

alias klocal="kubectl config use-context minikube"
alias kdev="kubectl config use-context dev"
alias krevenue="kubectl config use-context revenue"
alias ksearch="kubectl config use-context search"

alias etcdctl="ETCDCTL_API=3 etcdctl"
