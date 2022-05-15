#!/bin/sh

# IF there are issues with Alacritty closing once we try to
# open it like `./target/release/alacritty -vvv --print-events`

set -e

if test ! $(which cargo)
then
  echo "  💽 Installing Rustup"
  curl https://sh.rustup.rs -sSf | sh
  rustup override set stable
  rustup update stable
fi

echo "  ✅ Rustup + Cargo"

if test $(ls $HOME/src/github.com/alacritty/target/release/osx/Alacritty.app >> /dev/null 2>&1)
then
  echo "  👯‍♀️ Cloning Alacritty repo"
  git clone https://github.com/jwilm/alacritty.git $HOME/src/github.com/alacritty
  cd $HOME/src/github.com/alacritty
  echo "  🔨 Building"
  make app
  cp -r target/release/osx/Alacritty.app /Applications/Alacritty.app
fi

echo "  ✅ Alacritty"
