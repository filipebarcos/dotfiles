export PATH="$HOME/bin:$ZSH/bin:$PATH"
export PATH="$PATH:$HOME/.yarn/bin"

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
else
  export PATH="$HOME/.rbenv/shims:/usr/local/heroku/bin:$PATH"
fi
