# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias gbrd="git branch | grep -v "master" | xargs git branch -D"

alias gcm="git commit -m"
alias gwip="git commit -m 'wip'"
alias gp="git rev-parse --abbrev-ref HEAD | git push -u origin $1"
alias gforce="git push -f"
alias whatlast="git show HEAD"
alias ci="git commit"
alias st="git status"
alias master="git checkout master"
alias back="git checkout -"
alias grebase="git checkout master && git pull && git checkout - && git rebase master"

# hub related aliases
alias pr="hub pull-request"
