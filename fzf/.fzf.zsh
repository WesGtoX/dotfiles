# Setup fzf
# ---------
if [[ ! "$PATH" == */home/wesley/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/wesley/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/wesley/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/wesley/.fzf/shell/key-bindings.zsh"

# Feed the output of fd into fzf
#fd --type f | fzf

# Setting fd as the default source for fzf
#export FZF_DEFAULT_COMMAND='fd --type f'

# Now fzf (w/o pipe) will use fd instead of find
# fzf

# To apply the command to CTRL-T as well
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# If you want the command to follow symbolic links, and don't want it to exclude hidden files, use the following command:
#export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# git ls-tree for fast traversal
# If you're running fzf in a large git repository, git ls-tree can boost up the speed of the traversal.
# export FZF_DEFAULT_COMMAND='
#   (git ls-tree -r --name-only HEAD ||
#    find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
#       sed s/^..//) 2> /dev/null'