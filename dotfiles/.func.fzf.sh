# # FZF installs
# # https://sourabhbajaj.com/mac-setup/iTerm/fzf.html
# # brew install fzf
# # /usr/local/opt/fzf/install
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Doc: https://github.com/junegunn/fzf 
# FZF_DEFAULT_COMMAND
# Default command to use when input is tty
export FZF_DEFAULT_COMMAND='fd --type f'
# FZF_DEFAULT_OPTS
# Default options
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

# fd - cd to selected directory
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2>/dev/null | fzf +m) &&
        cd "$dir"
}

# fh - search in your command history and execute selected command
fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
