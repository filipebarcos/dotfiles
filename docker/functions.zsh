# Some docker related functions to improve workflow
use () {
  eval "$(docker-machine env $1)"
}
