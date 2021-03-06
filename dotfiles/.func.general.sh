# ssh prompt user@host change
prompt_context() {
    if [[ "$USER"!="$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
    fi
}

# echo 'mkdir -p "$(date +%Y-%m-%d)" && lastfile="$(date +%Y-%m-%d/%H-%M-%S)-"'$1'".txt" && '$2''
st(){
  echo 'mkdir -p "$HOME/server_logs/$(date +%Y-%m-%d)" && lastfile="$HOME/server_logs/$(date +%Y-%m-%d/%H-%M-%S)-'$1'.txt" && ('$2' | tee '$lastfile')'
  eval 'mkdir -p "$HOME/server_logs/$(date +%Y-%m-%d)" && lastfile="$HOME/server_logs/$(date +%Y-%m-%d/%H-%M-%S)-'$1'.txt" && ('$2' | tee '$lastfile')'
}

# st es bbs
# mkdir -p "$HOME/server_logs/$(date +%Y-%m-%d)" && lastfile="$HOME/server_logs/$(date +%Y-%m-%d/%H-%M-%S)-"es".txt" && bbs | tee lastfile

# = cd with auto-ls
function cd() {
    builtin cd "$@" && ls -F
}

# = add to path
# https://unix.stackexchange.com/questions/217622/add-path-to-path-if-not-already-in-path
# https://unix.stackexchange.com/a/217629/365280
path_append () {
    pathmunge "$1" "after"
}

path_prepend () {
    pathmunge "$1"
}

pathmunge () {
    if ! echo "$PATH" | grep -Eq "(^|:)$1($|:)" ; then
        if [ "$2" = "after" ] ; then
            export PATH="$PATH:$1"
        else
            export PATH="$1:$PATH"
        fi
    fi
}

# bash change http://ezprompt.net/
# get current branch in git repo
function parse_git_branch() {
    BRANCH=$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    if [ ! "${BRANCH}" == "" ]; then
        STAT=$(parse_git_dirty)
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty() {
    status=$(git status 2>&1 | tee)
    dirty=$(
        echo -n "${status}" 2>/dev/null | grep "modified:" &>/dev/null
        echo "$?"
    )
    untracked=$(
        echo -n "${status}" 2>/dev/null | grep "Untracked files" &>/dev/null
        echo "$?"
    )
    ahead=$(
        echo -n "${status}" 2>/dev/null | grep "Your branch is ahead of" &>/dev/null
        echo "$?"
    )
    newfile=$(
        echo -n "${status}" 2>/dev/null | grep "new file:" &>/dev/null
        echo "$?"
    )
    renamed=$(
        echo -n "${status}" 2>/dev/null | grep "renamed:" &>/dev/null
        echo "$?"
    )
    deleted=$(
        echo -n "${status}" 2>/dev/null | grep "deleted:" &>/dev/null
        echo "$?"
    )
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
