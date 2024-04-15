if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

# History configuration
setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.
HISTSIZE=10000000
SAVEHIST=10000000
HIST_STAMPS="yyyy-mm-dd"
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

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

