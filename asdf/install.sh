#!/bin/sh

set -e

if test ! $(which asdf)
then
  echo "Please, run `script/install_brew` to get asdf installed"
else
  plugin_list=(ruby rust nodejs erlang elixir go)
  asdf plugin-add ruby
  asdf plugin-add rust
  asdf plugin-add nodejs
  asdf plugin-add erlang
  asdf plugin-add elixir
  asdf plugin-add go https://github.com/kennyp/asdf-golang.git
  bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
fi
