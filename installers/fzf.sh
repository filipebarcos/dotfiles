#!/bin/sh

set -e

if test $(which fzf) 
then
    ./opt/homebrew/opt/fzf/install
else
    echo "⚠️ FZF not installed. Skipping..."
fi