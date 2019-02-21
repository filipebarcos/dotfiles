#!/bin/sh

set -e

DOTFILES_ROOT="`pwd`"
echo "Compiling terminfo files"

sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/fixtures/tmux.terminfo"
sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/fixtures/tmux-256color.terminfo"
sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/fixtures/xterm-256color.terminfo"

echo "Compiled. Now sourcing xterm-256color"
[ -e ~/.tmux/fixtures/xterm-256color.terminfo ] && tic ~/.tmux/fixtures/xterm-256color.terminfo

echo "Done ✅"
