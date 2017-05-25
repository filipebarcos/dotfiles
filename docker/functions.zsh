# Some docker related functions to improve workflow
use () {
  eval "$(docker-machine env $1)"
}

function dat () {
  if [[! -f "var/run/docker.sock" ]]; then
    printf "Sorry, docker is not running!"
    return 1
  fi

  docker attach $1
}
