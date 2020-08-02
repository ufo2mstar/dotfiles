# MAC's

# = Aliases
# brew
alias bi='brew install'
alias bri='brew reinstall'

# tldr
alias tl='tldr'
alias tlu='tldr --update'

# peco
alias p='peco'
alias pxp='ps aux|peco'
alias pwp='ps auxww|peco'


# FASD
eval "$(fasd --init auto)"
 
alias a='fasd -a'        # any
alias si='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias zd='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# leave these in the end
alias d="ssh dev"
alias dv="ssh dev -vvv"

# alias u=unalias
# u z

# = Unsure
. /usr/local/etc/profile.d/z.sh
export _Z_CMD="j"

# = Languages

# # Load rbenv automatically by appending the following to ~/.bash_profile:
# eval "$(rbenv init -)"
# run only if rbenv is present
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# https://builderhub.corp.amazon.com/docs/brazil/cli-guide/setup-macos.html
# /usr/libexec/java_home -V
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home"
# $JAVA_HOME/bin/java -version

# Load pyenv automatically by appending the following to ~/.bash_profile:
# eval "$(pyenv init -)"
# run only if pyenv is present
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PATH=$HOME/bin/anaconda3/bin:$PATH

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm use v12

# = SSH
# sshfs: MacOSXFuse
alias ss='sshfs narensub@narensub2-clouddesk.aka.corp.amazon.com:/local/home/narensub ~/cdd'
ss

# = Path Changes
# MAC setup
export PATH=/usr/local/bin:$PATH
