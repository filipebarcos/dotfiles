# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gca='git commit -a'
alias fga='git add $(git ls-files . --modified --exclude-standard --others | fzf --multi) && git status'
alias fgr='git restore --staged $(git diff --name-only --cached | fzf --multi) && git status'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"

alias gcm="git commit -m"
alias gwip="git commit -m 'wip'"
alias gforce="git push --force"
alias glease="git push --force-with-lease"
alias whatlast="git show HEAD"
alias ci="git commit"
alias st="git status"
alias master="git checkout master"
alias back="git checkout -"
alias grebase="git fetch origin master && git rebase origin/master"
alias gpush="git rev-parse --abbrev-ref HEAD | git push origin $1"
alias gpull="git rev-parse --abbrev-ref HEAD | git pull origin $1"
alias gitpushf="git pushf"

# hub related aliases
alias pr="hub pull-request"
