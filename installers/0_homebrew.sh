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
  echo "  💽 Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /tmp/homebrew-install.log
else
  echo "  ✅ Brew is already installed. Updating instead..."
  brew update
fi

if test ! $(brew bundle --help)
then
  echo "  💽 Installing brew-bundle"
  brew tap homebrew/bundle
fi

# Install homebrew packages
echo "  💽 Installing brew formules from Brewfile"
brew bundle --file=$HOME/.dotfiles/homebrew/Brewfile

echo "  ✅ Done with Homebrew"
