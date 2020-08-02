printf "loading $0..."

# absolute laziness
alias cl='clear'

## alias v='vim'
alias cd..='cd ..'

## ls shortcuts
alias lt='ls -ltah'
alias lts='ls -Slah'
alias ltsr='ls -Srlah'
alias la='ls -at'

# some more ls aliases
alias ll='ls -GAlF'
alias la='ls -GA'
alias l='ls -GCF'
alias ls='ls -GFh'

alias px='ps aux'
alias pw='ps auxww'

alias pxg='ps aux|grep'
alias pwg='ps auxww|grep'

## which
alias wh='which'
### which all
alias wa='which -a'

alias h='history | head -10 grep'

## git
alias gi='git init'
alias gc='git clone'
alias gs='git status'
### specific
alias gd='git dag'

# my aliases
alias e=emacs

# tmux adds
alias t='tmux'
alias tls='tmux ls'
alias tn='tmux new'
alias tns='tmux new -s' # named session
alias ta='tmux a'
alias tat='tmux a -t' # named session
alias tk='tmux kill-session -t' # named session

# = DEV
# gradle
alias g='gradle'
alias gt='gradle test'



# pretty print path!
alias ppath="tr ':' '\n' <<< '$PATH'"

echo "done!"