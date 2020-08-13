#!/bin/sh

set -e
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

vim -c 'CocInstall -sync coc-json coc-tsserver coc-go coc-sql'

# Install Dracula PRO colorschemes
mkdir -p ~/.vim/plugged/dracula_pro
cp -r "$CLOUD_DRIVE/DEV/dracula-pro/themes/vim/*" ~/.vim/plugged/dracula_pro/
