# Setup fzf
# ---------
if [[ ! "$PATH" == */home/seth/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/seth/.fzf/bin"
fi

# Auto-completion
# ---------------

[[ $- == *i* ]] && source "/home/seth/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/seth/.fzf/shell/key-bindings.zsh"

# RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
# INITIAL_QUERY=""
# FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" \
#   fzf --bind "change:reload:$RG_PREFIX {q} || true" \
#       --ansi --phony --query "$INITIAL_QUERY"

export FZF_DEFAULT_COMMAND='rg --hidden --files --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

