# default zshrc
source /apollo/env/envImprovement/var/zshrc

export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short

for f in SDETools envImprovement AmazonAwsCli OdinTools; do
  if [[ -d /apollo/env/$f ]]; then
    export PATH=$PATH:/apollo/env/$f/bin
  fi
done

export AUTO_TITLE_SCREENS="NO"

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

export RPROMPT=

set-title() {
echo -e "\e]0;$*\007"
}

ssh() {
  set-title $*;
  /usr/bin/ssh -2 $*;
  set-title $HOST;
}

# alias e=emacs
# alias bb=brazil-build

# alias bba='brazil-build apollo-pkg'
# alias bre='brazil-runtime-exec'
# alias brc='brazil-recursive-cmd'

# alias bw='brazil ws'

# alias bwsuse='bw use --gitMode -p'
# alias bwscreate='bw create -n'

# alias brc=brazil-recursive-cmd
# alias bbr='brc brazil-build'
# alias bball='brc --allPackages'
# alias bbb='brc --allPackages brazil-build'
# alias bbra='bbr apollo-pkg'

if [ -f ~/.zshrc-dev-dsk-post ]; then
  source ~/.zshrc-dev-dsk-post
fi

export PATH=$HOME/.toolbox/bin:$PATH

#end


# + happytrails
# Using user-provided happytrails.env at '/home/narensub/happytrails.env'
# ANT_OPTS= -Djava.io.tmpdir=/home/narensub/workplace/GSFTechApp/GSFTechTransContainerAdapterLambda/src/GSFTechTransContainerAdapterLambda/build/private/tmp -Dbuild.sysclasspath=ignore
# ANT_ARGS=-logger org.apache.tools.ant.listener.AnsiColorLogger -logger org.apache.tools.ant.listener.AnsiColorLogger
# /home/narensub/workplace/GSFTechApp/GSFTechTransContainerAdapterLambda/env/HappierTrails-3.4/runtime/bin/ant --noconfig -Dhappytrails.root=/home/narensub/workplace/GSFTechApp/GSFTechTransContainerAdapterLambda/env/HappierTrails-3.4/runtime
# Only one logger class may be specified.
# 
# export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'


# https://stackoverflow.com/questions/28491458/zsh-agnoster-theme-showing-machine-name/28492373
# Where we specify the theme
# ZSH_THEME="agnoster"
# Force yourself as the system's default user
# DEFAULT_USER="$(whoami)"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# redefine prompt_context for hiding user@hostname
  prompt_context () { }


# https://dougblack.io/words/zsh-vi-mode.html
# vi mode zle enabled
bindkey -v

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
  VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
  RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
  zle reset-prompt

}

zle -N zle-line-init
zle -N zle-keymap-select
  export KEYTIMEOUT=1

#end

# https://builderhub.corp.amazon.com/docs/cloud-desktop/user-guide/setup-post.html
alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
export PATH="/apollo/env/AmazonAwsCli/bin/:$PATH"
# alias third-party-promote='~/.toolbox/bin/brazil-third-party-tool promote'
# alias third-party='~/.toolbox/bin/brazil-third-party-tool'
alias vim='/apollo/env/envImprovement/bin/vim'

# https://bbs.archlinux.org/viewtopic.php?id=26110

# delete key remap
bindkey "\e[3~" delete-char

# key bindings
bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line
bindkey "e[5~" beginning-of-history
bindkey "e[6~" end-of-history
bindkey "e[3~" delete-char
bindkey "e[2~" quoted-insert
bindkey "e[5C" forward-word
bindkey "eOc" emacs-forward-word
bindkey "e[5D" backward-word
bindkey "eOd" emacs-backward-word
bindkey "ee[C" forward-word
bindkey "ee[D" backward-word
bindkey "^H" backward-delete-word

# for rxvt
  bindkey "e[8~" end-of-line
  bindkey "e[7~" beginning-of-line

# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
  bindkey "eOH" beginning-of-line
  bindkey "eOF" end-of-line

# for freebsd console
  bindkey "e[H" beginning-of-line
  bindkey "e[F" end-of-line
  # completion in the middle of a line
  bindkey '^i' expand-or-complete-prefix

#end


# auto ls after cd
#https://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
function chpwd() {
  emulate -L zsh
  ls -at
}

#end


# AMZ adds

# #Automatic mwinit and kinit
# #This will run mwinit and kinit only when necessary. 
# #Do not use this with the standalone automatic kinit and mwinit scripts.
#   #
#   #NOTE: You need to run mwinit -o manually at least once before this will work.
#   #preblej@: Add the following to your .bashrc and remove any standalone kinit or mwinit code:

#   yubi_age=$(( $(date +"%s") - $(stat -c "%Y" ~/.ssh/id_rsa-cert.pub) ))

# # Kinit checker
# if ! klist -s; then
#   kinit -f
# fi
# # mwinit checker
# if [ "$yubi_age" -gt "36000" ]; then
#   mwinit -o
# fi

# docker recos?

export DOCKER_HOST=unix:///var/run/docker.sock
# https://builderhub.corp.amazon.com/docs/rde/cli-guide/setup-post.html#cli-completion-zsh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
# from /etc/profile.d/docker_host.sh
export DOCKER_HOST=tcp://127.0.0.1:2376; export DOCKER_TLS_VERIFY=1

#end

# zsh prompt change
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

export PROMPT="
%{$fg[cyan]%}%D %{$fg[default]%}%* %{$fg[yellow]%}<%?,%j> %{$fg[default]%}[%{$fg[green]%}%~%{$fg[default]%}] $program
%{$fg[default]%}%#%{$fg[default]%} "
#end


# awesome dir bookmark alias 
# https://opensource.com/article/18/9/tips-productivity-zsh
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd ~2'
alias 3='cd ~3'
alias 4='cd ~4'
alias 5='cd ~5'
alias 6='cd ~6'
alias 7='cd ~7'
alias 8='cd ~8'
alias 9='cd ~9'
#end

# Z history
# https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
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

# https://stackoverflow.com/questions/12247777/share-history-between-panes-windows
setopt hist_ignore_dups 
setopt hist_ignore_space
#end

# # rr = rde run
# alias rr='rde env validate && rde wflow run && rde wflow run -s' # run-hydra-tests-GSFTechTransContainerAdapterLambdaTests

# JAVA_HOME=/apollo/env/envImprovement/jdk1.8
# export PATH=$JAVA_HOME/bin:$PATH

# # AAA
# alias raaa="/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py -a"

bwp(){
    
  echo "Pulling Brazil workspace here: `pwd`"
  echo
  echo "Whats your ws name?"
  echo "="
  read WS_NAME
  while :
    do
      echo
      echo "VersionSet name?\n
      1. ${WS_NAME}/development\n
      2. ${WS_NAME}/mainline\n
      3. ${WS_NAME}/???"
      echo "="
      read INPUT
      case $INPUT in
      1)
        VS="${WS_NAME}/development"
        break
        ;;
      2)
        VS="${WS_NAME}/mainline"
        break
        ;;
      3)
        echo "oh, so what's your VersionSet name?"
        read VS_NAME
        VS="${WS_NAME}/${VS_NAME}"
        break
        ;;

      *)
        echo
        echo "Sorry, I don't understand.. please try again"
        ;;
       esac
    done
    echo
    echo "${VS}"
    echo
    echo "brazil ws --create --name ${WS_NAME} --vs ${VS} && cd ${WS_NAME}"
}

# # easy barking EU
# barkeu(){
#   local ST=${1:-'2'}
#   local START='-'$ST'hours'
#   local ZGREP_SEARCH=${2:-'grep -C 5 "ScheduledDeliveryReminder-Email"'}
#   # local END=${'-'3'hours':-now}
#   local END='now'

#   local T_VAL='80'
#   # local ZGREP_SEARCH='ScheduledDeliveryReminder-Email'
  
#   local ARG=('f='$START'-t='$END'-zg=')
#   savelog $ARG
#   local FILE_NAME=$filename
#   echo ""
#   local QURY='bark -ms com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 -ownerEmail cstech-aws@amazon.com -endPoint https://timber-corp-dub.dub.proxy.amazon.com -fetchLogs\
#    -logGroupName CSNotificationControllerService/EU/Prod/CSNotificationControllerService.log \
#    -startTime '$START' -endTime '$END' -t='$T_VAL' -decompress \
#    | zgrep "" \
#    | '$ZGREP_SEARCH'  \
#    | tee "'$FILE_NAME'"'
#   echo "...Easy Barkin..."
#   echo $QURY
#   #exec($QURY)
#   eval "$QURY"
# }

# # easy barking
# barkcs(){
#   local ST=${1:-2}
#   local START='-'$ST'hours'
#   # local SD=${2:-now}
#   # local END=${"-"2"hours":-'now'}
  
#   local END='now'
  
#   local T_VAL='80'
#   local ZGREP_SEARCH="ScheduledDeliveryReminder-Email"
  
#   local ARG=('f='$START'-t='$END'-zg='$ZGREP_SEARCH)
#   savelog $ARG
#   local FILE_NAME=$filename
#   local QURY='bark -ms com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 -ownerEmail cstech-aws@amazon.com -endPoint https://timber-corp-iad.iad.proxy.amazon.com -fetchLogs\
#    -logGroupName CSNotificationControllerService/NA/Prod/CSNotificationControllerService.log \
#    -startTime '$START' -endTime '$END' -t='$T_VAL' -decompress \
#    | zgrep '$ZGREP_SEARCH' \
#    | grep -oP  "Failed at: \K.* \["| sort | uniq -c | sort -rn \
#    | tee "'$FILE_NAME'"'
#   echo "...Easy Barkin..."
#   echo $QURY
#   #exec($QURY)
#   eval "$QURY"
# }

# mktouch(){
#   #echo "MK Touchin..."
#   mkdir -p "$(dirname "$1")" && touch "$1"
# }


# savelog(){
#   echo "...Log file savin..."
#   local FILE_APPEND=${1:-}
#   local LOG_DIR=${2:-~/tee_logs}
#   local DATE=${LOG_DIR}/$(date +%Y-%m-%d/%H-%M-%S)-${FILE_APPEND}
#   filename="${DATE}.txt"
#   num=0
#   while [ -f $filename ]; do
#     num=$(( $num + 1 ))
#     filename="${DATE}-${num}.txt"
#   done
#   local QURY='mktouch "'$filename'"'
#   echo $QURY
#   #$QURY
#   eval "$QURY"
#   #exec($QURY)
#   #`$QURY`
#   #$($QURY)
# }

# https://superuser.com/questions/600090/avoiding-accidental-rm-disasters
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# ==================================================================================

# configs to Sync!
# ================
# reco aliases
 
alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
alias bo='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
 
alias third-party-promote='~/.toolbox/bin/brazil-third-party-tool promote'
alias third-party='~/.toolbox/bin/brazil-third-party-tool'
#end
 
# CRUX stuff
alias crr='cr -r '
 
# brazil stuff
# alias b='brazil'
alias bv='brazil --version'
alias bp='brazil prefs'
 
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
 
## b build
alias bb=brazil-build
alias bba='bb apollo-pkg'
alias bbt='bb test'
alias bbs='bb server'
alias bbp='bb preview'
alias bbf='bb format'
alias bbc='bb checkstyle'
alias bbre='bb release'
 
### bb synth
alias bbsy="bb synthesize"
alias bbsyp="bb synthesize-pipeline"
alias bbsycf="bb synthesize-cloud-formation"
 
## b recursive
alias brc=brazil-recursive-cmd
alias bbrc='brazil-recursive-cmd brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'
 
alias bbr='bbrc'
 
## b workspace
alias bw='brazil ws'
alias bws='bw sync'
alias bwc='bw clean'
alias bwm='bw merge'
alias bwcr='bw create --root'
alias bwcn='bw create -n'
alias bwr='bw remove'
alias bwrp='bwr --package'

alias bu='brazil ws use'
alias buv='bu --versionset'
alias bup='bu --package'
alias bupl='bu --platform'
alias bug='bu --gitMode -p'

## b platform override
alias bs='brazil setup'
alias bsps='brazil setup platform-support'
alias bp12='brazil ws use --platform AL2012'
alias bp64='brazil ws use --platform RHEL5_64'

alias bec='brazil-package-cache enable_edge_cache'
 
## b sam
alias sam="brazil-build-tool-exec sam"
alias smp='sam package'
alias smd='sam deploy'
alias smv='sam validate'
alias smpd='smp && smd'

#end
 
 
# # amz recos
alias nds='ninja-dev-sync'
alias ndsv='ninja-dev-sync -v'
alias ndss='ninja-dev-sync -setup'
alias ndsl='ninja-dev-sync -list'
 
alias ki='kinit -f'
alias mi='mwinit -o'
alias kd='kdestroy'
 
# my aliases
alias e=emacs
 
# my aliases
alias to='toolbox'
alias tv='toolbox --version'
alias ti='toolbox install'
alias tu='toolbox update'
 
# absolute laziness
alias c='clear'
alias v='vim'
alias cd..='cd ..'
alias lt='ls -ltah'
alias lts='ls -Slah'
alias ltsr='ls -Srlah'
alias la='ls -at'
 
alias h='history | head -10 grep'

alias gc='git clone'
alias gd='git dag'
alias gs='git status'

#Automatic mwinit and kinit
#This will run mwinit and kinit only when necessary. 
#Do not use this with the standalone automatic kinit and mwinit scripts.
#
#NOTE: You need to run mwinit -o manually at least once before this will work.
#preblej@: Add the following to your .bashrc and remove any standalone kinit or mwinit code:

yubi_age=$(( $(date +"%s") - $(stat -c "%Y" ~/.ssh/id_rsa-cert.pub) ))

# Kinit checker
# if ! klist -s; then
  # kinit -f
# fi
klist -A -s || kinit -f

# mwinit checker
if [ "$yubi_age" -gt "36000" ]; then
  mwinit -o
fi

# FASD
eval "$(fasd --init auto)"

alias a='fasd -a'        # any
alias si='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias p='peco'

# ==================================================================================
# mac
# Mac Adds
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad


# some more ls aliases
#alias ll='ls -GAlF'
#alias la='ls -GA'
#alias l='ls -GCF'
#alias ls='ls -GFh'

alias px='ps aux'
alias pw='ps auxww'

alias pxp='ps aux|peco'
alias pwp='ps auxww|peco'

alias pxg='ps aux|grep'
alias pwg='ps auxww|grep'

# kod
export GREP_OPTIONS='--color=always'
#export GREP_OPTIONS='--color=auto'
# ==================================================================================
# ------------------------

alias t='tmux'
alias tls='tmux ls'
alias tn='tmux new'
alias tns='tmux new -s' # named session
alias ta='tmux a'
alias tat='tmux a -t' # named session
alias tk='tmux kill-session -t' # named session

alias ppath="tr ':' '\n' <<< '$PATH'"

# ==================================================================================
# leave these in the end
alias s='source ~/.zshrc'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# npm config delete prefix

# nvm use --delete-prefix v12

export PATH=$PATH:/apollo/env/BarkCLI/bin


alias k='echo kk'

# ------
# array1=()
# array1+=prova1 
# array1+=prova2 
# array1+=slack64

# a=slack64
# if (printf '%s\n' "${array1[@]}" | grep -xq $a); then
#     echo "it's in"
# fi