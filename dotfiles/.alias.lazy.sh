# printf "loading $0..."

# absolute laziness
# alias a='alias'
alias cl='clear'

## alias v='vim'
alias cd..='cd ..'
alias al='alias'

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


# https://superuser.com/questions/600090/avoiding-accidental-rm-disasters
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"


# https://www.atlassian.com/git/tutorials/dotfiles
# reco with the .cfg dir feels like a slightly convinent but painful way because of 
# the non-default convention from tools that expect to understand the .git dir.
alias conf='/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME'
# echo ".git" >> .gitignore
# echo ".cfg" >> .gitignore
# conf config --local status.showUntrackedFiles no
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
alias c="conf"
alias cs="conf status"
alias ca="conf add"
alias coc="conf commit -m"

# to be at the end!
# To get XMing working we need to add a DISPLAY variable.
export DISPLAY=:0
# Run zsh at start up
# [ -t 1 ] && exec zsh

# echo "done!"