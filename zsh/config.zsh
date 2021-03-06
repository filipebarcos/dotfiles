if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

bindkey -v
bindkey '^R' history-incremental-search-backward

bindkey '^[[H'    beginning-of-line # fn + <-
bindkey '^[[1~'   beginning-of-line # fn + <- (tmux)

bindkey '^[[F'    end-of-line # fn + ->
bindkey '^[[4~'   end-of-line # fn + -> (tmux)


bindkey '^[[1;5D' backward-word # ctrl + <- (tmux and non-tmux)
bindkey '^[[1;5C' forward-word  # ctrl + -> (tmux and non-tmux)

bindkey '^[[1;3D' backward-word #alt + <- (tmux)
bindkey '^[[1;3C' forward-word  #alt + -> (tmux)

bindkey '^[^[[D' backward-word #alt + <-
bindkey '^[^[[C' forward-word  #alt + ->
