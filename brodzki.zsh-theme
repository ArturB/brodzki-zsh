if [[ $UID == 0 ]] ; then    
    PROMPT='%F{9}%n@%m %F{15}λ %~/ %{$reset_color%}'
else
    PROMPT='%F{10}%n@%m %F{15}λ %~/ %{$reset_color%}'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
