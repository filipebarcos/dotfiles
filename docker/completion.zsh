if [[ ! -o interactive ]]; then
    return
fi

compctl -K _use use
compctl -K _dat dat

_use() { reply=(`docker-machine ls -q`); }
_dat() { reply=(`docker ps --format "{{.Names}}"`); }
