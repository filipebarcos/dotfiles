#!/usr/bin/env bash

set -e

CMATCHER=$HOME/.vim/bundle/ctrlp-cmatcher

if [ -d $CMATCHER ]; then
  sh $CMATCHER/install.sh
fi
