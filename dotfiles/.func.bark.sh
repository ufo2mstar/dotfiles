
# 
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

# easy barking
# barkcs 24 
# => last 24 hour of logs
# barkcs 24 72 
# => last 24-72 hour of logs
barkcs(){
  local ST=${1:-2}
  local START='-'$ST'hours'
  local END=${2:-now}
  
  local T_VAL='80'
  local ZGREP_SEARCH='ScheduledDeliveryReminder-Email'
  
  local ARG=('f='$START'-t='$END'-zg='$ZGREP_SEARCH)
  savelog $ARG
  local FILE_NAME=$filename
  local QURY='time bark -ms com.amazon.access.cstech-aws-CSNCS-guest-dev-log-access-1 -ownerEmail cstech-aws@amazon.com -endPoint https://timber-corp-iad.iad.proxy.amazon.com -fetchLogs -logGroupName CSNotificationControllerService/NA/Prod/CSNotificationControllerService.log -startTime '$START' -endTime '$END' -t='$T_VAL' -decompress | zgrep '$ZGREP_SEARCH'| grep -oP  "Failed at: \K.* \["| sort | uniq -c | sort -rn | tee "'$FILE_NAME'"'
  echo "...Easy Barkin (storing this query in the file: $FILE_NAME)..."
  echo $QURY
  #exec($QURY)
  eval "$QURY"
}

mktouch(){
  #echo "MK Touchin..."
  mkdir -p "$(dirname "$1")" && touch "$1"
}

savelog(){
  echo "...Log file savin..."
  local FILE_APPEND=${1:-}
  local LOG_DIR=${2:-~/tee_logs}
  local DATE=${LOG_DIR}/$(date +%Y-%m-%d_%H-%M-%S)-${FILE_APPEND}
  filename="${DATE}.txt"
  num=0
  while [ -f $filename ]; do
    num=$(( $num + 1 ))
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
