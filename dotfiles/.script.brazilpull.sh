#!/bin/bash

# brazil workspace pull versionset
bwpv() {
    cd ~/workplace
    echo "Pulling Brazil workspace here: $(pwd)"
    echo
    echo "Whats your ws name?"
    echo "="
    read WS_NAME
    while :; do
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

bwpp() {
    echo "Pulling Brazil package here: $(pwd)"
    echo
    echo "Whats your package name?"
    echo "="
    read PKG_NAME
    local QURY2="brazil ws use --package ${PKG_NAME}"
    echo $QURY2
    eval "$QURY2"
}

# brazil workspace pull
bwp() {
    bwpv
    bwpp
}
