#!/bin/sh

set -e

if test ! $(which cargo)
then
  echo "  💽 Installing Rust+Cargo"
  brew install rust
fi

echo "  ✅ Cargo"

if test ! $(which alacritty)
then
  echo "  👯‍♀️ Cloning Alacritty repo"
  git clone https://github.com/jwilm/alacritty.git $HOME/src/github.com/alacritty
  cd $HOME/src/github.com/alacritty
  echo "  🔨 Building"
  cargo build --release
  make app
  cp -r target/release/osx/Alacritty.app /Applications/Alacritty.app
fi

echo "  ✅ Alacritty"
