# Some docker related functions to improve workflow
use () {
  eval "$(docker-machine env $1)"
}

dat () {
  eval "$(docker attach $1)"
}
