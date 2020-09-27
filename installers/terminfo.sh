#!/bin/sh

set -e

DOTFILES_ROOT="`pwd`"
echo "  💽 Compiling terminfo files"

sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/tmux.terminfo"
sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/tmux-256color.terminfo"
sh -c "tic -o $HOME/.terminfo $DOTFILES_ROOT/terminfo/xterm-256color.terminfo"


[ -e ~/.tmux/fixtures/xterm-256color.terminfo ] && tic ~/.tmux/fixtures/xterm-256color.terminfo

echo "  ✅ Compiled and `xterm-256color` sourced"
