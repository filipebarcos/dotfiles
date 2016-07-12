#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
fi

it test ! $(brew cask)
then
  echo "Installing brewcask"
  brew tap caskroom/cask
fi

# Install homebrew packages
brew install grc coreutils spark libxml2 git rbenv ruby-build tmux wget tig qt postgresql redis the_silver_searcher reattach-to-user-namespace

brew cask install slack dropbox google-chrome atom flux omnigraffle skype spotify vlc caffeine evernote osxfuse telegram appcleaner firefox screenhero iterm2 spectacle the-unarchiver

exit 0
