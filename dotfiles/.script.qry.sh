# https://sookocheff.com/post/bash/parsing-bash-script-arguments-with-shopts/
# https://learnxinyminutes.com/docs/bash/

# tim() {

#   package="" # Default to empty package
#   target=""  # Default to empty target

#   # Parse options to the `pip` command
#   while getopts ":h" opt; do
#     # echo opt
#     case ${opt} in
#     h)
#       echo "Usage:"
#       echo "    pip -h                      Display this help message."
#       echo "    pip install <package>       Install <package>."
#       # exit 0
#       ;;
#     \?)
#       echo "Invalid Option: -$OPTARG" 1>&2
#       #  exit 1
#       ;;
#     esac
#   done
#   # shift $((OPTIND - 1))
#   # https://stackoverflow.com/questions/3975004/how-to-make-a-multi-character-parameter-in-unix-using-getopt
#   # subcommand=$1
#   # shift # Remove 'pip' from the argument list
#   # case "$subcommand" in
#   # # Parse options to the install sub command
#   # install)
#   #   package=$1
#   #   shift # Remove 'install' from the argument list
#   #   # Process package options
#   #   while getopts ":t:" opt; do
#   #     case ${opt} in
#   #     t)
#   #       target=$OPTARG
#   #       ;;
#   #     \?)
#   #       echo "Invalid Option: -$OPTARG" 1>&2
#   #       # exit 1
#   #       ;;
#   #     :)
#   #       echo "Invalid Option: -$OPTARG requires an argument" 1>&2
#   #       # exit 1
#   #       ;;
#   #     esac
#   #   done
#   #   shift $((OPTIND - 1))
#   #   ;;
#   # esac

#   # echo package, $package
#   # echo target, $target

# }

# # tim(){
# #   bash ./.script.qry.sh "$@"
# # }

# # VAR=
# # https://stackoverflow.com/questions/16654607/using-getopts-inside-a-bash-function
# foo() {
#   # foo_usage() { echo "foo: [-a <arg>]" 1>&2; exit; }
#   foo_usage() {
#     # echo "qry Usage:"
#     # echo "    foo -h                      Display usage help"
#     # echo "    foo -a arg                  one arg."
#     # echo "    foo -b arg1 arg2            two arg."
#     # echo "    foo install <package>       Install <package>."
#     # # echo "foo: [-a <arg>]" 1>&2;
#     cat <<EOF
#   foo -a <a1> <a2> <a3> [-b] <b1> [-c]
#     -a      First flag; takes in 3 arguments
#     -b      Second flag; takes in 1 argument
#     -c      Third flag; takes in no arguments
# EOF
#   }

#   # multi args
#   # https://stackoverflow.com/questions/7529856/retrieving-multiple-arguments-for-a-single-option-using-getopts-in-bash

#   local OPTIND opt a VAR
#   echo $OPTIND $opt $a
#   while getopts ":a:b:h" opt; do
#     # at_least_one_arg=true
#     case "${opt}" in
#     a)
#       a="${OPTARG}"
#       VAR=1
#       ;;
#     b)
#       b="${OPTARG}"
#       ;;
#     h)
#       foo_usage
#       ;;
#     *)
#       foo_usage
#       ;;
#     esac
#   done
#   shift $((OPTIND - 1))

#   echo "opt a: [${a}], opt b: [${b}], non-option arguments: $*"

#   # defaults
#   # https://serverfault.com/questions/7503/how-to-determine-if-a-bash-variable-is-empty
#   # # [[ -z "${VAR}" ]]
#   # if [[ -z "${VAR}" ]]; then
#   #   echo "VAR is unset or set to the empty string"
#   # fi
#   # if [[ -z "${VAR+set}" ]]; then
#   #   echo "VAR is unset"
#   # fi
#   # if [[ -z "${VAR-unset}" ]]; then
#   #   echo "VAR is set to the empty string"
#   # fi
#   # if [ -n "${VAR}" ]; then
#   #   echo "${VAR} VAR is set to a non-empty string"
#   # fi
#   # if [ -n "${VAR+set}" ]; then
#   #   echo "${VAR} VAR is set, possibly to the empty string"
#   # fi
#   # if [ -n "${VAR-unset}" ]; then
#   #   echo "${VAR} VAR is either unset or set to a non-empty string"
#   # fi
#   # VAR=5
#   # [[ -z "${VAR}" ]]
#   # if [[ -z "${VAR}" ]]; then
#   #   echo "VAR is unset or set to the empty string"
#   # fi
#   # if [[ -z "${VAR+set}" ]]; then
#   #   echo "VAR is unset"
#   # fi
#   # if [[ -z "${VAR-unset}" ]]; then
#   #   echo "VAR is set to the empty string"
#   # fi
#   # if [ -n "${VAR}" ]; then
#   #   echo "${VAR} VAR is set to a non-empty string"
#   # fi
#   # if [ -n "${VAR+set}" ]; then
#   #   echo "${VAR} VAR is set, possibly to the empty string"
#   # fi
#   # if [ -n "${VAR-unset}" ]; then
#   #   echo "${VAR} VAR is either unset or set to a non-empty string"
#   # fi

#   if [[ -z "${VAR}" ]]; then
#     echo "VAR is unset or set to the empty string"
#   fi

#   # if ((a == 1)); then echo quick; fi
#   # if ((a > 0 && a <= 2)); then echo brown; fi
#   # if ((a > 0 && a <= 3)); then echo fox; fi
#   # if ((a == 4)); then echo jumped; fi
# }

# # foo
# # foo -a bc bar quux
# # foo -x

# # https://stackoverflow.com/questions/28039372/bash-set-u-allow-single-unbound-variable
# # set -u # fail for unbound var
# # set -e # reset? exits terminal
# # ${blah-} # default ot null string

# # search -t "08/04/06" -p/-o -w (weblab lab) -a (app log) -eu/-na
# # tim()
# # log()
# # ll()
# # ()

# qry_wip() {
#   # set -o noclobber # Avoid overlay files (echo "hi" > foo)
#   # # set -o errexit   # Used to exit upon error, avoiding cascading errors
#   # set -o pipefail  # Unveils hidden failures
#   # set -o nounset   # Exposes unset variables

#   usage_help() {
#     cat <<EOF

# Usage: ${FUNCNAME[1]} [-r na|eu] [-p|-o] [-a|-w|...] -t <log_time_glob> -f <filename_suffix> -- <eval_str>
#   time
#     -t <time> log time window that takes a log_time_glob, eg: "YYYY/MM/DD/hh" ; "2020/06/15/01" , "2020/06/15/{01,02,03}", "2020/06/15/**"
#     -f <fs>   filename suffix, eg:
#   config
#     region
#       -r na   North America (IAD)
#       -r eu   Europe (DUB)
#     env
#       -p      prod (default)
#       -o      one-box
#     log
#       -a      application.log (default)
#       -w      weblab-triggers.log
#      ...
#   Opt
#     eval_str  Command to be run on the zgrep-ed log lines, eg: " grep -C 10 'stuff' | grep -oP 'more' "

# EOF
#   }

#   # datetime="08/04/06" && search=" grep -C 10 'EVENT_307.*AMZN_ES_SH_SD.*orderIdsToOrderingShipmentIds'" && mkdir -p "$(date +%Y-%m-%d)" && lastfile="$(date +%Y-%m-%d/%H-%M-%S)-P-EU_08-04-06_ES-307.txt" && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/Prod/application.log/2020/$datetime/*.gz | $search " | tee -a $lastfile
#   # datetime="2020/08/04/06" \
#   # && search=" grep -C 10 'EVENT_307.*AMZN_ES_SH_SD.*orderIdsToOrderingShipmentIds'" \
#   # && mkdir -p "$(date +%Y-%m-%d)" \
#   # && lastfile="$(date +%Y-%m-%d/%H-%M-%S)-P-EU_08-04-06_ES-307.txt" \
#   # && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/Prod/application.log/$datetime/*.gz | $search " | tee -a $lastfile

#   local vars=$@
#   if [[ -z "${vars}" ]]; then
#     echo "No Params passed"
#     usage_help
#     return 0
#   fi

#   local OPTIND opt
#   local region log_env log_name
#   local datetime filename
#   local eval_str

#   # echo $OPTIND $opt $a
#   while getopts ":powar:t:f:" opt; do
#     # at_least_one_arg=true
#     case "${opt}" in
#     # na)
#     #   echo
#     #   ;&
#     # eu)
#     #   region=${opt}
#     #   ;;
#     t)
#       datetime="${OPTARG}"
#       ;;
#     f)
#       filename="${OPTARG}"
#       ;;
#     r)
#       # region="${OPTARG,,}" # lowercase all # grep 4
#       region="$(echo $OPTARG | tr '[:upper:]' '[:lower:]')"
#       # echo "opt region [na|eu]: $(${region})"
#       ;;

#     p)
#       log_env="Prod"
#       ;;
#     o)
#       log_env="OneBox/Prod"
#       ;;

#     w)
#       log_name="weblab-triggers.log"
#       ;;
#     a)
#       log_name="application.log"
#       ;;
#     v)
#       # todo: verbose?
#       echo "v0.2" #pretty print run time duratin and eval script
#       # echo "v0.1" #base script
#       ;;
#     # h)
#     #   usage_help
#     #   return 0
#     #   ;;
#     # ?) todo: apply
#     # :) todo: find
#     *)
#       usage_help
#       return 0
#       ;;
#     esac
#   done
#   shift $((OPTIND - 1))
#   # echo OPTIND
#   # echo $@
#   # echo $1
#   eval_str="$1"

#   # defaults
#   LOG_DIR="${HOME}/timber"

#   # [[ -z "${region}" ]]
#   # validation
#   # if [[ -z "${region}" ]]; then echo "$(region) is unset"; region="na"; fi
#   # if [[ -z "${log_env}" ]]; then echo "$(log_env) is unset"; log_env="Prod" ;fi
#   # if [[ -z "${log_name}" ]]; then echo "$(log_name) is unset"; log_name="application.log" ;fi
#   # if [[ -n "${region}" ]]; then echo "$(region) is set = $($region)"; fi
#   # $(${region:="na"})
#   region=${region:-"na"}
#   log_env=${log_env:-"Prod"}
#   log_name=${log_name:-"application.log"}
#   log_path=${log_path:-"/timber/eeylops-dev+prod@amazon.com/EeylopsService"}
#   filename=${filename:-"file_name"}
#   datetime=${datetime:-$(date "+%Y/%m/%d/%H")} #defaulting to current hour window (assuming log exists in UTC)

#   local Region=$(echo $region | tr '[:lower:]' '[:upper:]')
#   # confirmation
#   echo "
#     region    : ${Region}
#     log_env   : ${log_env}
#     log_name  : ${log_name}

#     filename  : ${filename}
#     datetime  : ${datetime}
#     eval_str  : ${eval_str}
#     "
#   # non-option arguments: $*"

#   # host
#   timberhost_eu="eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com"
#   timberhost_na="eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com"
#   # region=$1
#   # i="timberhost_$region";
#   # echo "${!i}"
#   timberhost="timberhost_$region"
#   ssh_host="${USER}@${!timberhost}"
#   log_file="$log_path/$Region/$log_env/$log_name/\$datetime/*.gz"

#   # https://stackoverflow.com/questions/1167746/how-to-assign-a-heredoc-value-to-a-variable-in-bash
#   # search=" grep -C 10 'EVENT_307.*AMZN_ES_SH_SD.*orderIdsToOrderingShipmentIds' "
#   # datetime="2020/08/04/06"

#   # datetime="2020/08/04/06" && echo tr '/' '-' <<< $datetime
#   # datetime="2020/08/04/06/**/{06,12}" || echo tr '/' '-' |
#   # datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]+/-/g'

#   # datetime="2020/08/04/06/**/{06,12}" && file_datetime=$(echo ${datetime} | sed -E 's/[^0-9]+/-/g') && ${file_datetime%-}
#   # datetime="2020/08/04/06/**/{06,12}" && file_datetime=$(echo ${datetime} | sed -E 's/[^0-9]+/-/g' | ${?%-})

#   # datetime="2020/08/04/06/**/{06,12}" && echo $datetime | sed 's/[^0-9]+/-/g'
#   # echo $datetime | sed 's/[^0-9]+/-/g'

#   # filename="ES-307"
#   file_datetime=$(echo "${datetime}" | sed -E 's/[^0-9]+/-/g') && file_datetime=${file_datetime%-}
#   file_region=$(echo "${region}" | tr '[a-z]' '[A-Z]')
#   # file_suffix="${log_env:0:1}-${file_region}_${file_datetime}_\${filename}"
#   file_suffix="${log_env::1}-${file_region}_${file_datetime}_\${filename}"
#   _file_suffix="${log_env::1}-${file_region}_${file_datetime}_${filename}"
#   # file_prefix="${LOG_DIR}/$(date +%Y-%m-%d/%H-%M-%S)"
#   # file_prefix="${LOG_DIR}/$(date +%Y/%m/%d/%H-%M-%S)"
#   file_prefix="${LOG_DIR}/$(date +%m-%d-%Y/%H-%M-%S)"
#   lastfile=${file_prefix}_${file_suffix}.txt
#   _lastfile=${file_prefix}_${_file_suffix}.txt

#   # nl=$'\n'
#   #   query=$(
#   #     cat <<EOF
#   #         datetime="$datetime" \\
#   #         && search="$search" \\
#   #         && lastfile="${LOG_DIR}/$(date +%Y-%m-%d/%H-%M-%S)${filename}.txt" \\
#   #         && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \\
#   #         && time ssh ${ssh_host} "zgrep '' ${log_file} | $search " | tee -a $lastfile
#   # EOF
#   #   )

#   # && mkdir -p "${lastfile}" && touch "$lastfile"  \\
#   #   query='
#   #       datetime=$datetime \\$nl
#   #       && search=$search \\
#   #       && lastfile="${LOG_DIR}/$(date +%Y-%m-%d/%H-%M-%S)${filename}.txt" \\
#   #       && mkdir -p "${lastfile}" && touch "$lastfile"  \\
#   #       && time ssh ${ssh_host} "zgrep '' ${log_file} | $search " | tee -a $lastfile
#   # '

#   # printf '%s' $query

#   # $(filename="'$filename'" && mkdir -p "$(dirname "${lastfile}")" && touch "${lastfile}")
#   $(mkdir -p "$(dirname "${_lastfile}")" && touch "${_lastfile}")
#   printf "\n%s\n$(draw_sep 13)\n\n%s\n\n$(draw_sep 120)\n\n" "Search Query:" "${FUNCNAME[0]} $vars" | tee -a $_lastfile

#   # echo 'datetime="'$datetime'" \'
#   # echo '&& search="'$eval_str'" \'
#   # echo '&& filename="'$filename'" \'
#   # echo '&& lastfile="'$lastfile'" \'
#   # echo '&& mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \'
#   # echo '&& time ssh '${ssh_host}' \'
#   # echo '"zgrep '\'\'' '${log_file}' | \'
#   # echo '$search " | \'
#   # echo 'tee -a $lastfile'
#   # echo

#   #  '&& search="'${eval_str}'" \'
#   aa=(
#     'datetime="'$datetime'" \'
#     '&& search="'"${eval_str}"'" \'
#     '&& filename="'$filename'" \'
#     '&& lastfile="'$lastfile'" \'
#     '&& mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \'
#     '&& time ssh '${ssh_host}' \'
#     '"zgrep '\'\'' '${log_file}' | \'
#     '$search " | \'
#     'tee -a $lastfile'
#   )
#   # echo $aa[@]
#   # echo ${aa[*]}
#   # echo ${!aa[@]}

#   # # for ee in "${aa[*]}"; do
#   # for ee in ${aa[*]}; do
#   #   echo $ee | tee -a $_lastfile
#   #   # prints spaces in new lines too :/
#   # done

#   # https://stackoverflow.com/questions/15691942/print-array-elements-on-separate-lines-in-bash
#   # for i in ${aa[*]}; do
#   #   echo "$i\t: ${aa[i]}"
#   #   # prints spaces in new lines too :/
#   # done

#   local time_start time_stop
#   pretty_time() {
#     ((h = ${1} / 3600))
#     ((m = (${1} % 3600) / 60))
#     ((s = ${1} % 60))
#     printf "Duration - %02d h : %02d m : %02d s\n" $h $m $s
#   }
#   start_timer() {
#     time_start=$(date +%s)
#   }
#   stop_timer() {
#     time_stop=$(date +%s)
#     pretty_time $((time_stop - time_start))
#   }
#   draw_sep() {
#     # local sep=$(printf "%$1s" | tr " " "${$2:-"-"}")
#     echo $(printf "%${1:-80}s" | tr " " "${2:-"-"}")
#     #$(printf "%$1s" | tr " " "${$2:-"-"}")
#   }

#   (
#     IFS=$'\n'
#     echo "${aa[*]}" | tee -a $_lastfile
#   )
#   printf "\n\n$(date)\n$(draw_sep 120 =)\n\n" | tee -a $_lastfile
#   start_timer
#   # # https://stackoverflow.com/questions/15691942/print-array-elements-on-separate-lines-in-bash
#   # # printf '%s\n' "${aa[@]}" | tee -a $lastfile
#   local query=$(printf "%s\n" "${aa[@]%\\}") # remove \ and run query
#   # echo $query
#   eval $query
#   # local query="${aa[@]}"
#   # query=$(echo $query | tr " \\ " " ") # :/
#   # # tee -a $lastfile query
#   # echo ${query%\\}
#   # eval $query
#   # # echo query
#   # sleep 1
#   # printf "\n\n$(date)\n$(draw_sep 120 =)\n$(stop_timer)\n" | tee -a $_lastfile
#   printf "\n$(draw_sep 120 =)\n$(date)\n$(stop_timer)\n\n" | tee -a $_lastfile
# }

# test() {
#   query=$(
#     cat <<EOF
# datetime=$datetime
# EOF
#   )
#   echo $query
# }

# kod() {
#   return 1
# }

# mktouch() {
#   #echo "MK Touchin..."
#   mkdir -p "$(dirname "$1")" && touch "$1"
# }

# savelog() {
#   echo "...Log file savin..."
#   local FILE_APPEND=${1:-}
#   local LOG_DIR=${2:-~/tee_logs}
#   local DATE=${LOG_DIR}/$(date +%Y-%m-%d_%H-%M-%S)-${FILE_APPEND}
#   filename="${DATE}.txt"
#   num=0
#   while [ -f $filename ]; do
#     num=$(($num + 1))
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

# datetime="2020/08/08/**" \ && search="grep -P 'this'" \ && filename="test" \ && lastfile="/Users/narensub/timber/2020-08-08/13-12-06_O-EU_2020-08-08_${filename}.txt" \ && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \ && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com \ "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/OneBox/Prod/application.log/$datetime/*.gz | \ $search " | \ tee -a $lastfile

# -------------
# Run queries on a remote timber host and stores it locally for easy access and debugging,
# Built for EeylopsService (NA and EU servers) for now, can be expanded later
# Please take care to delete the data once done with any debugging work
# More details found in Usage heredoc below (just run the function to find out how to use it)
# Bonus: you can 'Ctrl+c'/'^c' to terminate the underlying log query process, and still store the time window info in the log output file
#
# eg:
# $ qry -a -o -r eu -t '2020/08/08/**' -f "output_file_suffix" -- "grep -P 'this'"
#
qry() {
  usage_help() {
    cat <<EOF

Usage: ${FUNCNAME[1]} [-r na|eu] [-p|-o] [-a|-w|...] -t <log_time_glob> -f <filename_suffix> -- <eval_str>
  time  
    -t <time> log time window that takes a log_time_glob, 
              eg: "YYYY/MM/DD/hh" ; "2020/06/15/01" , "2020/06/15/{01,02,03}", "2020/06/15/**" 
    -f <fs>   filename suffix, eg: "any-nonspaced_andReasonablyEscaped~string" 
              PS: there maybe some unhandled behavior with spaces/special characters in the filename
  config
    region
      -r na   North America (IAD)
      -r eu   Europe (DUB)
    env
      -p      prod (default)
      -o      one-box
    log
      -a      application.log (default)
      -w      weblab-triggers.log
    ...
  Opt
    eval_str  Command to be run on the zgrep-ed log lines, eg: " grep -C 10 'stuff' | grep -oP 'more' "

  Bonus: you can 'Ctrl+c/^c' to terminate the underlying log query process, 
  and still store the time window info in the log output file


EOF
  }

  local vars="$@"
  if [[ -z "${vars}" ]]; then
    echo "No Params passed"
    usage_help
    return 0
  fi

  local OPTIND opt
  local region log_env log_name
  local datetime filename
  local eval_str

  while getopts ":powar:t:f:" opt; do
    case "${opt}" in
    t)
      datetime="${OPTARG}"
      ;;
    f)
      filename="${OPTARG}"
      ;;
    r)
      region="$(echo "$OPTARG" | tr '[:upper:]' '[:lower:]')"
      ;;

    p)
      log_env="Prod"
      ;;
    o)
      log_env="OneBox/Prod"
      ;;

    w)
      log_name="weblab-triggers.log"
      ;;
    a)
      log_name="application.log"
      ;;
    v)
      # todo: verbose?
      echo "v0.2" #pretty print run time duratin and eval script
      # echo "v0.1" #base script
      ;;
    *)
      usage_help
      return 0
      ;;
    esac
  done
  shift $((OPTIND - 1))
  eval_str="$1"

  # defaults
  LOG_DIR="${HOME}/timber"

  region=${region:-"na"}
  log_env=${log_env:-"Prod"}
  log_name=${log_name:-"application.log"}
  log_path=${log_path:-"/timber/eeylops-dev+prod@amazon.com/EeylopsService"}
  filename=${filename:-"file_name"}
  datetime=${datetime:-$(date "+%Y/%m/%d/%H")} #defaulting to current hour window (assuming log exists in UTC)

  local Region=$(echo $region | tr '[:lower:]' '[:upper:]')

  # confirmation
  echo "
    region    : ${Region}
    log_env   : ${log_env}
    log_name  : ${log_name}

    filename  : ${filename}
    datetime  : ${datetime}
    
    eval_str  : ${eval_str}
    "
  # non-option arguments: $*"

  # host
  timberhost_eu="eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com"
  timberhost_na="eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com"

  timberhost="timberhost_$region"
  ssh_host="${USER}@${!timberhost}"
  log_file="$log_path/$Region/$log_env/$log_name/\$datetime/*.gz"

  file_datetime="$(echo "${datetime}" | sed -E 's/[^0-9]+/-/g')" && file_datetime="${file_datetime%-}"
  file_region="$(echo "${region}" | tr '[a-z]' '[A-Z]')"
  file_suffix="${log_env::1}-${file_region}_${file_datetime}_\${filename}"
  _file_suffix="${log_env::1}-${file_region}_${file_datetime}_${filename}"
  file_prefix="${LOG_DIR}/$(date +%m-%d-%Y/%H-%M-%S)"
  lastfile="${file_prefix}_${file_suffix}.txt"
  _lastfile="${file_prefix}_${_file_suffix}.txt"

  $(mkdir -p "$(dirname "${_lastfile}")" && touch "${_lastfile}")
  printf "\n%s\n$(draw_sep 13)\n\n%s\n\n$(draw_sep 120)\n\n" "Search Query:" "${FUNCNAME[0]} $vars" | tee -a $_lastfile

  aa=(
    'datetime="'$datetime'" \'
    '&& search="'"${eval_str}"'" \'
    '&& filename="'"${filename}"'" \'
    '&& lastfile="'"$lastfile"'" \'
    '&& mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \'
    '&& time ssh '${ssh_host}' \'
    '"zgrep '\'\'' '${log_file}' | \'
    '$search " | \'
    'tee -a "$lastfile"'
  )

  local time_start time_stop
  pretty_time() {
    ((h = ${1} / 3600))
    ((m = (${1} % 3600) / 60))
    ((s = ${1} % 60))
    printf "Duration - %02d h : %02d m : %02d s\n" $h $m $s
  }
  start_timer() {
    time_start=$(date +%s)
  }
  stop_timer() {
    time_stop=$(date +%s)
    pretty_time $((time_stop - time_start))
  }
  draw_sep() {
    echo $(printf "%${1:-80}s" | tr " " "${2:-"-"}")
  }

  (
    IFS=$'\n'
    echo "${aa[*]}" | tee -a $_lastfile
  )
  printf "\n\n$(echo "Writing to: $_lastfile")\n\n$(date)\n$(draw_sep 120 =)\n\n" | tee -a $_lastfile
  start_timer
  local query=$(printf "%s\n" "${aa[@]%\\}") # remove \ and run query
  eval $query
  printf "\n$(draw_sep 120 =)\n$(echo "Written to: $_lastfile")\n$(date)\n$(stop_timer)\n\n" | tee -a $_lastfile
}

# =========================
# bbark

bbark() {
  usage_help() {
    cat <<EOF

Usage: ${FUNCNAME[1]} [-r na|eu] [-p|-o] [-a|-w|...] -t <log_time_glob> -f <filename_suffix> -- <eval_str>
  time  
    -t <time>   log time window that takes a log_time_glob, 
                eg: "YYYY/MM/DD/hh" ; "2020/06/15/01" , "2020/06/15/{01,02,03}", "2020/06/15/**"
    -b <before> start time in hours (before now)
                eg: "2" is -2hours before -now
    -f <fs>     filename suffix, eg: "any-nonspaced_andReasonablyEscaped~string" 
                PS: there maybe some unhandled behavior with spaces/special characters in the filename
  config
    region
      -r na   North America (IAD)
      -r eu   Europe (DUB)
    env
      -p      prod (default)
      -o      one-box
    log
      -a      application.log (default)
      -w      weblab-triggers.log
    ...
  Opt
    eval_str  Command to be run on the zgrep-ed log lines, eg: " grep -C 10 'stuff' | grep -oP 'more' "

  Bonus: you can 'Ctrl+c/^c' to terminate the underlying log query process, 
  and still store the time window info in the log output file


EOF
  }

  local vars="$@"
  if [[ -z "${vars}" ]]; then
    echo "No Params passed"
    usage_help
    return 0
  fi

  local OPTIND opt
  local region log_env log_name
  local datetime filename
  local eval_str
  local before

  while getopts ":powar:b:t:f:" opt; do
    case "${opt}" in
    b)
      before="${OPTARG}"
      ;;
    t)
      datetime="${OPTARG}"
      ;;
    f)
      filename="${OPTARG}"
      ;;
    r)
      region="$(echo "$OPTARG" | tr '[:upper:]' '[:lower:]')"
      ;;

    p)
      log_env="Prod"
      ;;
    o)
      log_env="OneBox/Prod"
      ;;

    w)
      log_name="weblab-triggers.log"
      ;;
    a)
      log_name="application.log"
      ;;
    v)
      # todo: verbose?
      echo "v0.2" #pretty print run time duratin and eval script
      # echo "v0.1" #base script
      ;;
    *)
      usage_help
      return 0
      ;;
    esac
  done
  shift $((OPTIND - 1))
  eval_str="$1"

  # defaults
  LOG_DIR="${HOME}/bark"

  region=${region:-"na"}
  log_env=${log_env:-"Prod"}
  log_name=${log_name:-"application.log"}
  log_path=${log_path:-"/timber/eeylops-dev+prod@amazon.com/EeylopsService"}
  filename=${filename:-"file_name"}
  datetime=${datetime:-$(date "+%Y/%m/%d/%H")} #defaulting to current hour window (assuming log exists in UTC)
  before=${before:-"2")}                  #defaulting to current hour window (assuming log exists in UTC)
  eval_str=${eval_str:-'grep -C 5 "ScheduledDeliveryReminder-Email"'}

  local Region=$(echo $region | tr '[:lower:]' '[:upper:]')

  # confirmation
  echo "
    region    : ${Region}
    log_env   : ${log_env}
    log_name  : ${log_name}

    filename  : ${filename}
    datetime  : ${datetime}

    before    : ${before}
    eval_str  : ${eval_str}
    "
  # non-option arguments: $*"

  # host
  host_na="https://timber-corp-iad.iad.proxy.amazon.com"
  host_eu="https://timber-corp-dub.dub.proxy.amazon.com"

  host="host_$region"
  ssh_host="${!host}"
  log_file="$log_path/$Region/$log_env/$log_name/\$datetime/*.gz"

  file_datetime="$(echo "${datetime}" | sed -E 's/[^0-9]+/-/g')" && file_datetime="${file_datetime%-}"
  file_region="$(echo "${region}" | tr '[a-z]' '[A-Z]')"
  file_suffix="${log_env::1}-${file_region}_${file_datetime}_\${filename}"
  _file_suffix="${log_env::1}-${file_region}_${file_datetime}_${filename}"
  file_prefix="${LOG_DIR}/$(date +%m-%d-%Y/%H-%M-%S)"
  lastfile="${file_prefix}_${file_suffix}.txt"
  _lastfile="${file_prefix}_${_file_suffix}.txt"

  $(mkdir -p "$(dirname "${_lastfile}")" && touch "${_lastfile}")
  printf "\n%s\n$(draw_sep 13)\n\n%s\n\n$(draw_sep 120)\n\n" "Search Query:" "${FUNCNAME[0]} $vars" | tee -a $_lastfile

  local now="now"
  local thread_count="16"
  aa=(
    'bark -ms \'
    'com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 \'
    '-ownerEmail cstech-aws@amazon.com \'
    '-endPoint '$ssh_host' \'
    '-fetchLogs'
    '-logGroupName CSNotificationControllerService/'$Region'/Prod/CSNotificationControllerService.log \'
    '-startTime -'$before'hours -endTime '$now' -t='$thread_count' -decompress \'
    '| zgrep "" \'
    '| '"$eval_str"' \'
    '| tee -a "'"$_lastfile"'"'
  )

  local time_start time_stop
  pretty_time() {
    ((h = ${1} / 3600))
    ((m = (${1} % 3600) / 60))
    ((s = ${1} % 60))
    printf "Duration - %02d h : %02d m : %02d s\n" $h $m $s
  }
  start_timer() {
    time_start=$(date +%s)
  }
  stop_timer() {
    time_stop=$(date +%s)
    pretty_time $((time_stop - time_start))
  }
  draw_sep() {
    echo $(printf "%${1:-80}s" | tr " " "${2:-"-"}")
  }

  (
    IFS=$'\n'
    echo "${aa[*]}" | tee -a $_lastfile
  )
  printf "\n\n$(echo "Writing to: $_lastfile")\n\n$(date)\n$(draw_sep 120 =)\n\n" | tee -a $_lastfile
  start_timer
  local query=$(printf "%s\n" "${aa[@]%\\}") # remove \ and run query
  echo $query
  # eval $query
  printf "\n$(draw_sep 120 =)\n$(echo "Written to: $_lastfile")\n$(date)\n$(stop_timer)\n\n" | tee -a $_lastfile
}

# easy barking EU
barkeu() {
  local ST=${1:-'2'}
  local START='-'$ST'hours'
  local ZGREP_SEARCH=${2:-'grep -C 5 "ScheduledDeliveryReminder-Email"'}
  # local END=${'-'3'hours':-now}
  local END='now'

  local T_VAL='80'
  # local ZGREP_SEARCH='ScheduledDeliveryReminder-Email'

  local ARG=('f='$START'-t='$END'-zg=')
  savelog $ARG
  local FILE_NAME=$filename
  echo ""
  local QURY='bark -ms com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 -ownerEmail cstech-aws@amazon.com -endPoint https://timber-corp-dub.dub.proxy.amazon.com -fetchLogs\
   -logGroupName CSNotificationControllerService/EU/Prod/CSNotificationControllerService.log \
   -startTime '$START' -endTime '$END' -t='$T_VAL' -decompress \
   | zgrep "" \
   | '$ZGREP_SEARCH'  \
   | tee "'$FILE_NAME'"'
  echo "...Easy Barkin..."
  echo $QURY
  #exec($QURY)
  eval "$QURY"
}

# easy barking
barkcs() {
  local ST=${1:-2}
  local START='-'$ST'hours'
  # local SD=${2:-now}
  # local END=${"-"2"hours":-'now'}

  local END='now'

  local T_VAL='80'
  local ZGREP_SEARCH="ScheduledDeliveryReminder-Email"

  local ARG=('f='$START'-t='$END'-zg='$ZGREP_SEARCH)
  savelog $ARG
  local FILE_NAME=$filename
  local QURY='bark -ms com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 -ownerEmail cstech-aws@amazon.com -endPoint https://timber-corp-iad.iad.proxy.amazon.com -fetchLogs\
   -logGroupName CSNotificationControllerService/NA/Prod/CSNotificationControllerService.log \
   -startTime '$START' -endTime '$END' -t='$T_VAL' -decompress \
   | zgrep '$ZGREP_SEARCH' \
   | grep -oP  "Failed at: \K.* \["| sort | uniq -c | sort -rn \
   | tee "'$FILE_NAME'"'
  echo "...Easy Barkin..."
  echo $QURY
  #exec($QURY)
  eval "$QURY"
}

mktouch() {
  #echo "MK Touchin..."
  mkdir -p "$(dirname "$1")" && touch "$1"
}

savelog() {
  echo "...Log file savin..."
  local FILE_APPEND=${1:-}
  local LOG_DIR=${2:-~/tee_logs}
  local DATE=${LOG_DIR}/$(date +%Y-%m-%d/%H-%M-%S)-${FILE_APPEND}
  filename="${DATE}.txt"
  num=0
  while [ -f $filename ]; do
    num=$(($num + 1))
    filename="${DATE}-${num}.txt"
  done
  local QURY='mktouch "'$filename'"'
  echo $QURY
  #$QURY
  eval "$QURY"
  #exec($QURY)
  #`$QURY`
  #$($QURY)
}
