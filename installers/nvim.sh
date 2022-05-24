#!/bin/sh

echo "  💽 Installing vim-plug"
set -e
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "  ✅ vim-plug installed"

# Install Dracula PRO colorschemes
echo "  🔗 Linking dracula theme files..."
mkdir -p ~/.vim/plugged/dracula_pro
cp -r ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/DEV/dracula-pro/themes/vim/* ~/.vim/plugged/dracula_pro/

echo "  🧛🏻‍♂️ Dracula installed"

echo "  💽 Installing vim plugins"
# vim +PlugInstall +qall
echo "  ✅ Vim plugins installed"
