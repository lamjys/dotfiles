# ping count times
alias ping='ping -c 3'
# list hidden file and dir only
alias dot='ls -ld .?*'
# search history
alias gh='history|grep'
# exa to show icons
alias exa='exa --icons'
# midnight commander exit to current directory
alias mc='. /usr/share/mc/bin/mc-wrapper.sh'
# ticker.sh script to use symlink ticker.conf output as arg
alias t.sh='ticker.sh $(cat ~/.config/ticker.sh/ticker.conf)'
# croc transfer file/dir
alias crsnd='croc --relay croc.hiyama.fans --pass transfer send --code hiyama'
alias crrec='croc --relay croc.hiyama.fans --pass transfer hiyama'
# visidata
alias vd='visidata'
