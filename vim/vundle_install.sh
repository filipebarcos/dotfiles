if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/Vundle.vim
fi

vim +BundleInstall +qall
