#!/bin/sh

set -e

if test $(which fzf)
then
    sh -c /opt/homebrew/opt/fzf/install
else
    echo "⚠️ FZF not installed. Skipping..."
fi
