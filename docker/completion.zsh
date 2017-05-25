if [[ ! -o interactive ]]; then
    return
fi

compctl -K _use use

_use() { reply=(`docker-machine ls -q`); }

compctl -K _dat dat

_dat() { reply=(`docker ps --format "{{.Names}}"`) }
