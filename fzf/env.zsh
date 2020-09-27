# export FZF_DEFAULT_COMMAND="git ls-tree -r --name-only || rg --files --hidden --follow --glob '!{.git,node_modules,log}/*'"
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!{.git,node_modules,log,sorbet,rbi,vendor,vcr_cassettes}/*'"
export FZF_DEFAULT_OPTS="--inline-info"
