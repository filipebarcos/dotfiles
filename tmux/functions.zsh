tat() {
  eval "$(tmux attach-session -t $1)"
}

tnew() {
  export CURRENT_TMUX_SESSION=$1
  tmux -u new-session -s $1
}

# Credits: https://github.com/lf94/peek-for-tmux
peek() {
  tmux split-window -p 33 "$EDITOR" "$@" || exit;
}
