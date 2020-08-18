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

#Good Cert Check automater
# https://sage.amazon.com/posts/592658
kmonday() { /usr/kerberos/bin/kinit -f -l 7d -r 30d; }
if ! klist -l; then kmonday; fi

# new cert check
secinit() {
    mwinit -o
}

check_cert() {
    KEY_FILE="$HOME/.ssh/id_rsa-cert.pub"
    if [ -f $KEY_FILE ]; then
        CERT=$(ssh-keygen -Lf $KEY_FILE | awk 'NR==7{print $5}')
        DATE_NOW=$(date +"%Y-%m-%dT%T")
        if [[ "$DATE_NOW" > "$CERT" ]]; then
            echo "$0: your midway has expired..."
            secinit
        fi
    else
        echo "$0: your midway has expired..."
        secinit
    fi
}
check_cert #run automatically

## todo: explore curl https://midway-auth.amazon.com/login to see if connected to network
# resp=$(curl https://midway-auth.amazon.com/login);
# $ if [ "Midway Authentication Portal" == "${resp}" ]; then echo "connected" fi;