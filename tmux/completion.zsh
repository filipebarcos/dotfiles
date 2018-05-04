if [[ ! -o interactive ]]; then
    return
fi

compctl -K _tat tat

_tat() { reply=(`tmux ls -F "#{session_name}"`) }
