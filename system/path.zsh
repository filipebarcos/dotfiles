export PATH="$HOME/bin:$ZSH/bin:$PATH"

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
else
  export PATH="$HOME/.rbenv/shims:/usr/local/heroku/bin:$PATH"
fi
