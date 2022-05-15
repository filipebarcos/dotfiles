#!/bin/sh

set -e

asdf_plugin_update() {
  if ! asdf plugin-list | grep -Fq "$1"; then
    asdf plugin-add "$1" "$2"
  fi

  asdf plugin-update "$1"
}

if test ! $(which asdf)
then
  echo "  ⚠️ Please, run `script/setup` again to ensure homebrew installed all dependencies"
else
  echo "  💽 Installing asdf plugins"
  asdf_plugin_update "ruby" "https://github.com/asdf-vm/asdf-ruby"
  echo "    ✅ 💎 Ruby"
  asdf_plugin_update "go" "https://github.com/kennyp/asdf-golang.git"
  echo "    ✅ 🦦 Golang"

  echo 'bundler' > $HOME/.default-gems
fi

echo "  ✅ Done with ASDF"
