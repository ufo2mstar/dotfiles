
# https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
# I'm not aware of any way using bash. 
# But it's one of the most popular features of zsh.
# Personally I prefer zsh over bash so I recommend trying it.
# Here's the part of my .zshrc that deals with history:
SAVEHIST=10000 # Number of entries
HISTSIZE=10000
HISTFILE=~/.zsh/history # File
setopt APPEND_HISTORY # Don't erase history
setopt EXTENDED_HISTORY # Add additional data to history like timestamp
setopt INC_APPEND_HISTORY # Add immediately
setopt HIST_FIND_NO_DUPS # Don't show duplicates in search
setopt HIST_IGNORE_SPACE # Don't preserve spaces. You may want to turn it off
setopt NO_HIST_BEEP # Don't beep
setopt SHARE_HISTORY # Share history between session/terminals