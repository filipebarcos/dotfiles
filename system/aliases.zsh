#Enable aliases to be sudo’ed
alias sudo='sudo '
alias workspace="cd ~/workspace"
alias dot="cd ~/.dotfiles"
alias src="cd ~/src"
alias cls="clear"
alias ll="ls -lash"

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
