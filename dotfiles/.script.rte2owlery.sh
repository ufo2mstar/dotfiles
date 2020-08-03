# = depricated
op() {
    echo "*** Get owlery preview links ***"
    echo
    echo "Whats your cs link?"
    read LINK
    RES=$(echo $LINK | sed -e "s/htt.*cs-customer-notification-na.amazon.*urn.*rtn.*msg.*[a-z0-9]*&shipTrackEventCode/shipTrackEventCode/g" | sed -e "s/&/\",\"/g" | sed -e "s/=/\":\"/g")
    echo
    echo "Heres your corresponding owlery preview link"
    echo
    echo "https://owlery-na-prod.corp.amazon.com/preview/ScheduledDeliveryReminder-Email/ATVPDKIKX0DER?renderParamsJson={\"${RES}\"}"
    echo
    echo
}

# better script attempt
# RTE search link to Owlery preview ling generator
# todo: non SDR specific, non NA-US specific linkifier
r2o() {
    printf "*** Get owlery preview links ***\n\n"
    read -p "Whats your cs link?  -  " link
    render_params=$(echo $link | sed -e "s/htt.*cs-customer-notification-na.amazon.*urn.*rtn.*msg.*[a-z0-9]*&shipTrackEventCode/shipTrackEventCode/g" | sed -e "s/&/\",\"/g" | sed -e "s/=/\":\"/g")
    printf "\nHeres your corresponding owlery preview link\n\n"
    printf "https://owlery-na-prod.corp.amazon.com/preview/ScheduledDeliveryReminder-Email/ATVPDKIKX0DER?renderParamsJson={\"${render_params}\"}\n\n"
}
