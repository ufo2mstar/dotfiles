# set s for re-sourcing the rc files
script="$SHELL"
# echo $script
# [ -z "$BASH_SOURCE" ] && script="$0"
# Bash vs Zsh logic: cdd vs macos rule
printf "Loaded configs for: "

# if [ $script =~ "bash" ]; then
#   echo "Bash"
#   alias s='source ~/.bashrc'
# else
#   echo "Zsh"
#   alias s='source ~/.zshrc'
# fi

# = works version
# if [ -n "$ZSH_VERSION" ]; then
#    # assume Zsh
#   echo "Zsh"
#   alias s='source ~/.zshrc'
# elif [ -n "$BASH_VERSION" ]; then
#    # assume Bash
#   echo "Bash"
#   alias s='source ~/.bashrc'
# else
#    # assume something else
#    echo "No resourcing!"
# fi

# = works shell
# https://stackoverflow.com/questions/9910966/how-to-get-shell-to-self-detect-using-zsh-or-bash
case $SHELL in
*/zsh)
    # assume Zsh
    echo "Zsh"
    alias s='source ~/.zshrc'
    ;;
*/bash)
    # assume Bash
    echo "Bash-MacOS"
    alias s='source ~/.bashrc'
    #bash specific
    alias ver='lsb_release -a'
#end
    ;;
*)
    # assume something else
    echo "No resourcing!"
    ;;
esac
