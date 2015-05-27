#!/usr/bin/env bash

set -e

CMATCHER=$HOME/.vim/bundle/ctrlp-cmatcher

if [ -d $CMATCHER ]; then
  cd $CMATCHER
  sh install.sh
fi
