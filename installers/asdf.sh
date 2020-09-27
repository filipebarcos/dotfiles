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
  asdf_plugin_update "rust" "https://github.com/asdf-vm/asdf-rust"
  echo "    ✅ 🦀 Rust"
  asdf_plugin_update "nodejs" "https://github.com/asdf-vm/asdf-nodejs"
  echo "    ✅ 💩 Node.js"
  asdf_plugin_update "erlang" "https://github.com/asdf-vm/asdf-erlang"
  echo "    ✅ 🧠 Erlang"
  asdf_plugin_update "elixir" "https://github.com/asdf-vm/asdf-elixir"
  echo "    ✅ 🧪 Elixir"
  asdf_plugin_update "go" "https://github.com/kennyp/asdf-golang.git"
  echo "    ✅ 🦦 Golang"
  bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

  echo 'bundler' > $HOME/.default-gems
fi

echo "  ✅ Done with ASDF"
