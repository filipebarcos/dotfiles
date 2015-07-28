# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias ll="gls -lAhF --color"
  alias l="gls -l --color"
  alias la='gls -A --color'
fi
#Enable aliases to be sudo’ed
alias sudo='sudo '
alias workspace="cd ~/workspace"
alias dot="cd ~/.dotfiles"
alias src="cd ~/src"
alias cls="clear"

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
