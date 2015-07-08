autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]]
    then
      echo "[%{$fg[green]%}$(git_prompt_info)%{$reset_color%}]"
    else
      echo "[%{$fg[red]%}$(git_prompt_info)%{$reset_color%})"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo ": %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

ruby_version() {
  if (( $+commands[rbenv] )) && [[ -f .ruby-version ]]
  then
    echo "$(rbenv version | awk '{print $1}')"
  fi
}

rb_prompt() {
  if ! [[ -z "$(ruby_version)" ]]
  then
    echo "%{$fg_bold[white]%}(%{$reset_color%}%{$fg_bold[red]%}$(ruby_version)%{$reset_color%}%{$fg_bold[white]%})%{$reset_color%}"
  else
    echo ""
  fi
}

directory_name() {
  echo "%{$fg[blue]%}%c%{$reset_color%}"
}

export PROMPT=$'$(directory_name)$(git_dirty)$(need_push)\|\> '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}$(rb_prompt)%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
