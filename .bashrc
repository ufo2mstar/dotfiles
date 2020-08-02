# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
 
# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac


# https://builderhub.corp.amazon.com/docs/set-up-laptop-macos.html#setup-macos-ssh
# MAC setup
export PATH=/usr/local/bin:$PATH

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
 
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
 
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
 
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar
 
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
 
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi
 
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac
 
# Enable 256 colors
[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color
 
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
 
if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi
 
if [ "$color_prompt"=yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
# unset color_prompt force_color_prompt
 
# If this is an xterm set the title to user@host:dir
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
  *)
    ;;
esac
 
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'
 
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias zgrep='zgrep --color=auto'
fi
 
# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $?=0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
 
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
 
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
 
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
 
 
# AMZ adds
 
# #getting up ssh-agent
# #jerrysw@: Add the following block into your .bashrc to allow ssh-agent to be used across multiple bash instances:
 
# if ps -p $SSH_AGENT_PID > /dev/null
# then
#    echo "ssh-agent is already running"
#    # Do something knowing the pid exists, i.e. the process with $PID is running
# else
# eval `ssh-agent -s`
# fi

# SSHAGENT=/usr/bin/ssh-agent
# if [ -z "`pgrep ssh-agent`" -a -x "$SSHAGENT" ]; then
#   # clean up old ssh-agent socket files
#   rm -rf /tmp/ssh*
#   echo Starting ssh-agent...
#   eval `$SSHAGENT -s`
# else
#   export SSH_AGENT_PID=`pgrep ssh-agent` export SSH_AUTH_SOCK=`ls /tmp/ssh*/* | grep "$(expr $SSH_AGENT_PID - 1)"`
#   echo Agent pid $SSH_AGENT_PID
# fi

# --------

# ps -u $(whoami) | grep ssh-agent &> /dev/null
# if [ $? -ne 0 ];then
#     eval $(ssh-agent)
#     ssh-add
#     echo "export SSH_AGENT_PID=$SSH_AGENT_PID" > ~/.agent-profile
#     echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> ~/.agent-profile
# else
#     source ~/.agent-profile
# fi
# trap 'ssh-agent -k; exit' 0

# # mwinit?
# # cd ~
# alias cert='./mwinit -o'
 
# export PATH=$HOME/.toolbox/bin:$PATH
# export PATH=$HOME/bin:$PATH
 
 
# ssh prompt user@host change
prompt_context() {
  if [[ "$USER"!="$DEFAULT_USER" || -n "$SSH_CLIENT"  ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
 
# # local aliases
# alias c="clear"
 
# # my aliases
# alias t='toolbox'
# alias tv='toolbox --version'
# alias ti='toolbox install'
# alias cd..='cd ..'
# alias b='brazil'
# alias bbre='brazil-build release'
# alias bbs='brazil-build server'
# alias c='clear'
 
 
# # PATH=$HOME/.toolbox/bin:$PATH
 
 
 
 
export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'
 
#end
 
#bash specific
alias ver='lsb_release -a'
#end
 
function cd {
  builtin cd "$@" && ls -F
  }
 
# https://medium.com/@iraklis/fixing-dark-blue-colors-on-windows-10-ubuntu-bash-c6b009f8b97c
 
LS_COLORS='rs=0:di=1;35:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
 
# ruby adds https://w.amazon.com/index.php/Ruby/Install
# export PATH=$HOME/.rbenv/bin:$PATH
# eval "$(rbenv init -)"
#end
 
 
# bash change http://ezprompt.net/
# get current branch in git repo
function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    STAT=`parse_git_dirty`
    echo "[${BRANCH}${STAT}]"
  else
    echo ""
  fi
}
 
# get current status of git repo
function parse_git_dirty {
  status=`git status 2>&1 | tee`
  dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
  untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
  ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
  newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
  renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
  deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
  bits=''
  if [ "${renamed}" == "0" ]; then
    bits=">${bits}"
  fi
  if [ "${ahead}" == "0" ]; then
    bits="*${bits}"
  fi
  if [ "${newfile}" == "0" ]; then
    bits="+${bits}"
  fi
  if [ "${untracked}" == "0" ]; then
    bits="?${bits}"
  fi
  if [ "${deleted}" == "0" ]; then
    bits="x${bits}"
  fi
  if [ "${dirty}" == "0" ]; then
    bits="!${bits}"
  fi
  if [ ! "${bits}" == "" ]; then
    echo " ${bits}"
  else
    echo ""
  fi
}
 
export PS1="\[\e[36m\]\d\[\e[m\] \[\e[33m\]\t\[\e[m\] \[\e[32m\]\u\[\e[m\] \[\e[35m\]\`parse_git_branch\`\[\e[m\]:\w\\$ " # with username
export PS1="\[\e[36m\]\d\[\e[m\] \[\e[33m\]\t\[\e[m\]:\[\e[35m\]\`parse_git_branch\`\[\e[m\]\[\e[36m\]\w\[\e[m\]\n\\$ " # with new lines and what not!
#end
 
 
#temp
export mod='/home/narensub/winworkplace/GSFTechApp/GSFTechTransContainerAdapterLambda/src/GSFTechTransContainerAdapterLambdaModel'
export down='/mnt/c/Users/narensub/Downloads'
export wh='/mnt/c/Users/narensub/'
#end
 
 
 
 
 
# Z history# bash hist
# https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
 
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups 
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
 
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
 
#end
 
# https://unix.stackexchange.com/a/419779
# brew install tac <- reverse cat :P
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="history -n; history -w; history -c; history -r"
tac "$HISTFILE" | awk '!x[$0]++' > /tmp/tmpfile  &&
                tac /tmp/tmpfile > "$HISTFILE"
rm /tmp/tmpfile
 
# ==================================================================================

# MAC's

# Load rbenv automatically by appending
# the following to ~/.bash_profile:

eval "$(rbenv init -)"

# https://builderhub.corp.amazon.com/docs/brazil/cli-guide/setup-macos.html
# /usr/libexec/java_home -V
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home"
# $JAVA_HOME/bin/java -version
 
alias bi='brew install'
alias bri='brew reinstall'

alias tl='tldr'
alias tlu='tldr --update'

. /usr/local/etc/profile.d/z.sh
export _Z_CMD="j"

# Load pyenv automatically by appending
# the following to ~/.bash_profile:

eval "$(pyenv init -)"

alias ss='sshfs narensub@narensub2-clouddesk.aka.corp.amazon.com:/local/home/narensub ~/cdd'
ss

# ==================================================================================

# SCRIPTS

op(){
  echo "*** Get owlery preview links ***"
  echo
  echo "Whats your cs link?"
  read LINK
  RES=`echo $LINK | sed -e "s/htt.*cs-customer-notification-na.amazon.*urn.*rtn.*msg.*[a-z0-9]*&shipTrackEventCode/shipTrackEventCode/g" | sed -e "s/&/\",\"/g" | sed -e "s/=/\":\"/g"`
  echo
  echo "Heres your corresponding owlery preview link"
  echo
  echo "https://owlery-na-prod.corp.amazon.com/preview/ScheduledDeliveryReminder-Email/ATVPDKIKX0DER?renderParamsJson={\"${RES}\"}"
  echo
  echo
}

# brazil workspace pull versionset
bwpv(){
  cd ~/workplace
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
      3. ${WS_NAME}/release\n
      4. ${WS_NAME}/???"
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
        VS="${WS_NAME}/release"
        break
        ;;
      4)
        echo "oh, so what's your VersionSet name? ${WS_NAME}/_____"
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
    local QURY="brazil ws --create --name ${WS_NAME} --vs ${VS} && cd ${WS_NAME}"
    echo $QURY
    eval "$QURY"
    # local QURY2="cd ${WS_NAME} && brazil ws use --package ${WS_NAME}"
    # echo $QURY2
    # eval "$QURY2"
}

# brazil workspace pull package

bwpp(){
  echo "Pulling Brazil package here: `pwd`"
  echo
  echo "Whats your package name?"
  echo "="
  read PKG_NAME
  local QURY2="brazil ws use --package ${PKG_NAME}"
  echo $QURY2
  eval "$QURY2"
}

# brazil workspace pull
bwp(){
  bwpv
  bwpp
}

# ==================================================================================

# # configs to Sync!
# # ================
# # reco aliases
 
# alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
# alias bo='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
 
# alias third-party-promote='~/.toolbox/bin/brazil-third-party-tool promote'
# alias third-party='~/.toolbox/bin/brazil-third-party-tool'
# #end
 
# # CRUX stuff
# alias crr='cr -r '
 
# # brazil stuff
# # alias b='brazil'
# alias bv='brazil --version'
# alias bp='brazil prefs'
 
# alias bre='brazil-runtime-exec'
# alias brc='brazil-recursive-cmd'
 
# ## b build
# alias bb=brazil-build
# alias bba='bb apollo-pkg'
# alias bbt='bb test'
# alias bbs='bb server'
# alias bbp='bb preview'
# alias bbf='bb format'
# alias bbc='bb clean'
# alias bbcs='bb checkstyle'
# alias bbre='bb release'
 
# ### bb synth
# alias bbsy="bb synthesize"
# alias bbsyp="bb synthesize-pipeline"
# alias bbsycf="bb synthesize-cloud-formation"
 
# ## b recursive
# alias brc=brazil-recursive-cmd
# alias bbrc='brazil-recursive-cmd brazil-build'
# alias bball='brc --allPackages'
# alias bbb='brc --allPackages brazil-build'
# alias bbra='bbr apollo-pkg'
 
# alias bbr='bbrc'
 
# ## b workspace
# alias bw='brazil ws'
# alias bws='bw sync'
# alias bwsm='bw sync --md'
# alias bwc='bw clean'
# alias bwm='bw merge'
# alias bwcr='bw create --root'
# alias bwcn='bw create -n'
# alias bwr='bw remove'
# alias bwrp='bwr --package'

# alias bu='brazil ws use'
# alias buv='bu --versionset'
# alias bup='bu --package'
# alias bupl='bu --platform'
# alias bug='bu --gitMode -p'

# ## b platform override
# alias bs='brazil setup'
# alias bsps='brazil setup platform-support'
# alias bp12='brazil ws use --platform AL2012'
# alias bp64='brazil ws use --platform RHEL5_64'

# alias bwd='brazil ws --dryrun'

# alias bpcs='brazil-package-cache start'
# alias bpcc='brazil-package-cache enable_edge_cache'
# alias bpce='brazil-package-cache stop' # end

# # brazil ws --clean
# # brazil-package-cache stop
# # brazil-package-cache enable_edge_cache
# # brazil-package-cache start
# # brazil ws --sync --md

# ## b sam
# alias sam="brazil-build-tool-exec sam"
# alias smp='sam package'
# alias smd='sam deploy'
# alias smv='sam validate'
# alias smpd='smp && smd'

# #end
 
 
# # # amz recos
# alias nds='ninja-dev-sync'
# alias ndsv='ninja-dev-sync -v'
# alias ndss='ninja-dev-sync -setup'
# alias ndsl='ninja-dev-sync -list'
 
# alias ki='kinit -f'
# alias mi='mwinit -o'
# alias kd='kdestroy'
 
# # my aliases
# alias e=emacs
 
# # my aliases
# alias to='toolbox'
# alias tv='toolbox --version'
# alias ti='toolbox install'
# alias tu='toolbox update'


# # absolute laziness
# alias cl='clear'
# alias v='vim'
# alias cd..='cd ..'
# alias lt='ls -ltah'
# alias lts='ls -Slah'
# alias ltsr='ls -Srlah'
# alias la='ls -at'
# alias wh='which'
# alias wa='which -a'
 
# alias h='history | head -10 grep'

# alias gc='git clone'
# alias gd='git dag'
# alias gs='git status'

# just oad the file explicitely
# source "dotfiles/.aliases.sh"

# better yet, run all files within dotfiles
# https://stackoverflow.com/questions/41079143/run-all-shell-scripts-in-folder
# for f in "$HOME/dotfiles/*.sh"; do
# for f in "$HOME/dotfiles/*"; do
# for f in dotfiles/*.sh ; do
# for f in ./dotfiles/.*.sh ; do
for f in $HOME/dotfiles/.*.sh ; do
  cmd="{bash '$f' -H} 2> /dev/null"
  echo $cmd
  eval $cmd
done

# ----
alias g='gradle'
alias gt='gradle test'

 
# #Automatic mwinit and kinit
# #This will run mwinit and kinit only when necessary.
# #Do not use this with the standalone automatic kinit and mwinit scripts.
# #
# #NOTE: You need to run mwinit -o manually at least once before this will work.
# #preblej@: Add the following to your .bashrc and remove any standalone kinit or mwinit code:
 
# yubi_age=$(( $(date +"%s") - $(stat -c "%Y" ~/.ssh/id_rsa-cert.pub) ))
 
# # Kinit checker
# # if ! klist -s; then
#   # kinit -f
# # fi
# klist -A -s || kinit -f
 
# # mwinit checker
# if [ "$yubi_age" -gt "36000" ]; then
#   mwinit -o
# fi

# Good Cert Check automater
# # https://sage.amazon.com/posts/592658
# kmonday() { /usr/kerberos/bin/kinit -f -l 7d -r 30d; }
# if ! klist -l; then kmonday; fi
# # new cert check
# secinit(){
#   mwinit -o
# }
# check_cert() {
#     KEY_FILE="$HOME/.ssh/id_rsa-cert.pub"
#     if [ -f $KEY_FILE ]; then
#         CERT=$(ssh-keygen -Lf $KEY_FILE | awk 'NR==7{print $5}')
#         DATE_NOW=$(date +"%Y-%m-%dT%T")
#         if [[ "$DATE_NOW" > "$CERT" ]] ;
#         then
#             echo "zshrc: your midway has expired..."
#             secinit
#         fi
#     else
#         echo "zshrc: your midway has expired..."
#         secinit
#     fi
# }
# check_cert #run automatically


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

# alias u=unalias
# u z

alias p='peco'

# ==================================================================================

# Mac Adds
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

 
# some more ls aliases
alias ll='ls -GAlF'
alias la='ls -GA'
alias l='ls -GCF'
alias ls='ls -GFh'

alias px='ps aux'
alias pw='ps auxww'

alias pxp='ps aux|peco'
alias pwp='ps auxww|peco'

alias pxg='ps aux|grep'
alias pwg='ps auxww|grep'

# ------------------------

alias t='tmux'
alias tls='tmux ls'
alias tn='tmux new'
alias tns='tmux new -s' # named session
alias ta='tmux a'
alias tat='tmux a -t' # named session
alias tk='tmux kill-session -t' # named session

alias ppath="tr ':' '\n' <<< '$PATH'"

export PATH=$HOME/bin/anaconda3/bin:$PATH

# ==================================================================================
 
 
# leave these in the end
alias d="ssh dev"
alias dv="ssh dev -vvv"
alias s='source ~/.bashrc'
 
# to be at the end!
# To get XMing working we need to add a DISPLAY variable.
export DISPLAY=:0
# Run zsh at start up
# [ -t 1 ] && exec zsh

#needs
#1. fasd - directory hops
#2. htop - ps poll
#3. peco - better grep
#4. bat - better cat
#5. tldr - better man
#6. vim - make a good config file


#nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm use v12

#rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# FZF installs
# https://sourabhbajaj.com/mac-setup/iTerm/fzf.html
# brew install fzf
# /usr/local/opt/fzf/install
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# fh - search in your command history and execute selected command
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# ----------

# https://www.atlassian.com/git/tutorials/dotfiles
# reco with the .cfg dir feels like a slightly convinent but painful way because of 
# the non-default convention from tools that expect to understand the .git dir.
alias conf='/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME'
# echo ".git" >> .gitignore
# echo ".cfg" >> .gitignore
# conf config --local status.showUntrackedFiles no
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc