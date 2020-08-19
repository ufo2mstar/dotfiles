## https://stackoverflow.com/questions/8880603/loop-through-an-array-of-strings-in-bash
# ## declare an array variable
# declare -a arr=(
#     ".source.pre.sh"
#     ""
#     ".source.post.sh"
# )

# ## now loop through the above array
# for i in "${arr[@]}"; do
#     echo "$i"
#     # or do whatever with individual element of the array
# done

# # You can access them using echo "${arr[0]}", "${arr[1]}" also

# ------
# Load in order

# # Pre-source
# echo "Pre-Hook"
# source $HOME/dotfiles/.source.pre.sh

# # better yet, run all files within dotfiles
# # https://stackoverflow.com/questions/41079143/run-all-shell-scripts-in-folder
# # for f in "$HOME/dotfiles/*.sh"; do
# # for f in "$HOME/dotfiles/*"; do
# # for f in dotfiles/*.sh ; do
# # for f in ./dotfiles/.*.sh ; do
# # for f in $HOME/dotfiles/.*(sh|rc) ; do
# for f in $HOME/dotfiles/.*.sh ; do
#   # cmd="{bash '$f' -H} 2> /dev/null"
#   # cmd="{source '$f'} 2> /dev/null"
#   # [[ $f =~ source|cdd ]] && { echo "shipping $f" ; continue}
#   [[ $f =~ source|cdd|zsh ]] && echo "skipping $f" && continue
#   cmd="source '$f'"
#   # cmd="bash '$f' -H"
#   echo $cmd
#   eval $cmd
#   # eval "{$cmd} 2> /dev/null"
# done

# # Post-source
# echo "Post-Hook"
# source $HOME/dotfiles/.source.post.sh

declare -a order=(
    # ".source.pre"
    ".config.*"
    ".alias.*"
    ".inputrc*"
    ".func.*"
    ".script.*"
    ".mac.*"
    # ".source.post"
)

declare -a done=()
# # Pre-source
echo "Pre-Hook"
source $HOME/dotfiles/.source.pre.sh

for i in "${order[@]}"; do
    # echo "$i"
    for f in $HOME/dotfiles/$i.sh; do
        done+="$f"
        [[ $f =~ source|cdd|zsh ]] && echo "skipping $f" && continue
        # if [[ ! -z $(printf '%s\n' "${order[@]}" | grep -w $find) ]]; then
        #     echo "skipping $f.. already sourced";
        # fi
        cmd="source '$f'"
        echo $cmd
        eval $cmd
    done
done

echo "Post-Hook"
source $HOME/dotfiles/.source.post.sh
