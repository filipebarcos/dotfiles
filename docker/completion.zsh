if [[ ! -o interactive ]]; then
    return
fi

compctl -K _use use

_use() { reply=(`docker-machine ls -q`); }
