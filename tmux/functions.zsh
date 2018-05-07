tat() {
  eval "$(tmux attach-session -t $1)"
}

tnew() {
  tmux -u new-session -s $1
}
