# ping count times
alias ping='ping -c 3'

# list hidden file and dir only
alias dot='ls -ld .?*'

# search history
alias gh='history|grep'

# midnight commander exit to current directory
alias mc='. /usr/share/mc/bin/mc-wrapper.sh'

# ticker.sh script to use symlink ticker.conf output as arg
alias t.sh='ticker.sh $(cat ~/.config/ticker.sh/ticker.conf)'

# croc transfer file/dir
alias crsnd='croc --relay croc.hiyama.fans --pass transfer send --code hiyama'
alias crrec='croc --relay croc.hiyama.fans --pass transfer hiyama'

# visidata
alias vd='visidata'

# lazygit
alias lg='lazygit'

# zellij alias to ze
alias ze='zellij'

# eza
alias eza='eza -l --group-directories-first --icons=always --color-scale=all --color-scale-mode=gradient --time-style=long-iso'
alias ls='eza'

# nvim
alias nv='cd ~/appdata/mdnotes/ && nvim .'

# transmission-daemon
alias trm='transmission-remote'
alias tda='transmission-daemon'

# age
alias ageenc='age --armor -r $(cat ~/.config/sops/age/keys.txt | grep -oP "public key: \K(.*)")'
alias agedec='age -d -i ~/.config/sops/age/keys.txt'
