#!/bin/sh

set -e

DOTFILES_ROOT="`pwd`"
cp -r $DOTFILES_ROOT/git/fixtures/gitconfig $HOME/.gitconfig

echo "  ✅ .gitconfig created"
