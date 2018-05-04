tat() {
  eval "$(tmux attach $1)"
}

tnew() {
  tmux -u new-session -s $1
}
