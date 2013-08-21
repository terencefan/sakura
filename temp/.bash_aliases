alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -ahlF'

alias rm="rm -I"

alias df='df -h'
alias lg='ll | grep'
alias pg='ps aux | grep'

alias tmux='tmux -2'
alias tmuxa='tmux a || tmux'

alias rmds='find . -name ".DS_Store" -delete'
alias rmpyc='find . -name "*.pyc" -delete'

alias s='pkill -f "ssh -Nfn -D 7070"; nohup ssh -Nfn -D 7070 elemevps 1>/dev/null 2>&1'
alias wk='pkill -f "wikiserver.py"; nohup python2.6 ~/tools/wiki/wikiserver.py 1>/dev/null 2>&1 &'
alias p='pkill -f "python proxy.py"; cd ~/tools/goagent/local/; nohup python proxy.py 1>/dev/null 2>&1 &'
alias y='youtube-dl -c -l'

alias xld='xl download --continue --delete --tool aria2'
alias xll='xl list --speed --progress'

alias ap8='autopep8 --in-place --aggressive'
alias apall='find . -type f -name "*.py" | xargs autopep8 -i --aggressive'

alias cdm='cd ~/workspace/git/mysite/'

alias cdw='cd ~/workspace/git/walle/'
alias cdwlm='cd ~/workspace/git/walle/lib/model/'
alias cdwlz='cd ~/workspace/git/walle/lib/zeus'
alias cdwm='cd ~/workspace/git/walle/apps/walle/modules/'
alias cdwjs='cd ~/workspace/git/walle/web/walle/js/walle/'
alias cdz='cd ~/workspace/git/zeus2/'
alias cdzu='cd ~/workspace/git/zeus2/zeus/eus/'
alias cdzr='cd ~/workspace/git/zeus2/zeus/ers/'
alias cdzt='cd ~/workspace/git/zeus2/zeus/tds/'
alias cdzo='cd ~/workspace/git/zeus2/zeus/eos/'
alias cdzp='cd ~/workspace/git/zeus2/zeus/wps/'
alias cdzm='cd ~/workspace/git/zeus2/zeus/sms/'
alias cde='cd ~/workspace/git/earthshaker/'
alias cdee='cd ~/workspace/git/earthshaker/earthshaker/'
alias cdeev='cd ~/workspace/git/earthshaker/earthshaker/views/'
alias cdeth='cd ~/workspace/git/earthshaker/test/http/'

alias pkz='sh ~/bats/stop_zeus'
alias zus='zeus_eus_server'
alias zuh='zeus_eus_helper'
alias zrs='zeus_ers_server'
alias zrh='zeus_ers_helper'
alias zts='zeus_tds_server'
alias zth='zeus_tds_helper'
alias zos='zeus_eos_server'
alias zoh='zeus_eos_helper'
alias zps='zeus_wps_server'
alias zph='zeus_wps_helper'
alias zas='zeus_oas_server'
alias zah='zeus_oas_helper'
alias zms='zeus_sms_server'
alias zmh='zeus_sms_helper'

alias redis-server='redis-server /usr/local/etc/redis.conf'
