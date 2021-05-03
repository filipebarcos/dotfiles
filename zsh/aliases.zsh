alias reload!='. ~/.config/zsh/.zshrc'

#Enable aliases to be sudo’ed
alias sudo='sudo '
alias workspace="cd ~/workspace"
alias dot="cd ~/.dotfiles"
alias src="cd ~/src"
alias cls="clear"
alias ll="ls -lash"

# Pipe my public key to my clipboard. Fuck you, pay me.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

#OSX
# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# IP addresses
alias extip="dig +short myip.opendns.com @resolver1.opendns.com"
alias wifiip="ipconfig getifaddr en1"
alias cableip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

#biggest files
alias big-files="du -a / | sort -n -r | head -n 10"


# Docker
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dcd='docker-compose down'
alias dcr='docker-compose run'
alias dm='docker-machine'

# Git
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gca='git commit -a'
# git checkout with fzf help to select the branch
alias fco='git co $(git br | fzf)'
# git add with fzf help with multi-file support
alias fga='git add $(git ls-files . --modified --exclude-standard --others | fzf --multi --tac --marker=+) && git status'
# git restore with fzf help with multi-file support
alias fgr='git restore --staged $(git diff --name-only --cached | fzf --multi --tac --marker=-) && git status'
# delete git branches with fzf help with multi-select support
alias fgdb='git br -D $(git br | fzf --multi --tac --marker=D) && git br'
alias fgdel='fgbd'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias eguas='git add . && git-amend && git pushf'

alias gcm="git commit -m"
alias gwip="git commit -m 'wip'"
alias gforce="git push --force"
alias glease="git push --force-with-lease"
alias whatlast="git show HEAD"
alias ci="git commit"
alias st="git st"
alias master="git checkout master"
alias back="git checkout -"
alias grebase="git fetch origin master && git rebase origin/master"
alias gpush="git rev-parse --abbrev-ref HEAD | git push origin $1"
alias gpull="git rev-parse --abbrev-ref HEAD | git pull origin $1"
alias gitpushf="git pushf"

# gh related aliases
alias pr="gh pr create"

# Ruby/Rails
alias bil="bundle install"
alias brake="bundle exec rake"
alias be="bundle exec"

alias rc='be rails c'
alias ras='be rails s'

alias migrate='bundle exec rake db:migrate db:test:clone'
alias rrst='bundle exec rake db:reset'
alias br='be rspec'

# Tmux
alias tmux="tmux -2"

# Vim/Nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
