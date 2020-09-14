
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

