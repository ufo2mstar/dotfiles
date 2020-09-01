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

# array1=(prova1 prova2)
# array1+=(slack64)
# a=slack64
# if (printf '%s\n' "${array1[@]}" | grep -xq $a); then
#     echo "it's in"
# fi

declare -a order=(
    # ".source.pre"
    ".alias.*"
    ".inputrc*"
    ".func.*"
    ".script.*"
    # ".script.*" # duplicate try
    ".mac.*"
    ".config.*"
    # ".source.post"
)

declare -a done=()
# # Pre-source
echo "Pre-Hook"
source $HOME/dotfiles/.source.pre.sh
declare skips="source|cdd|zsh"
for i in "${order[@]}"; do
    # echo "$i"
    for f in $HOME/dotfiles/$i.sh; do
        # echo ${done[@]}
        [[ $f =~ skips ]] && echo "skipping $f" && continue
        # # if [[ ! -z $(printf "%s\n" "${done[@]}" | ggrep -w "$f") ]]; then
        if (printf '%s\n' "${done[@]}" | grep -xq $f); then
            # echo "skipping $f.. already sourced"
            printf "already sourced '$f' - skipping\n"
            continue
        fi
        cmd="source '$f'"
        printf "\t$cmd\n"
        eval $cmd
        # store pre-loaded files
        done+=("$f")
    done
done

echo "Post-Hook"
source $HOME/dotfiles/.source.post.sh
