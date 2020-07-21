#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew

set -e

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
else
  echo "Brew is already installed, updating it for you"
  brew update
fi

if test ! $(brew bundle --help)
then
  echo "Installing brew-bundle"
  brew tap homebrew/bundle
fi

# Install homebrew packages

brew bundle --file=$HOME/.dotfiles/homebrew/Brewfile
exit 0
