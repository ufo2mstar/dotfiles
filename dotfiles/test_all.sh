for f in .*.sh ; do  # run all .*.sh files in dir
  echo bash "$f" -H 
done

for f in .*.sh ; do
  # cmd="{bash '$f' -H} 2> /dev/null"
  # cmd="{source '$f'} 2> /dev/null"
  [[ $f =~ source|cdd ]] && { echo "skipping $f" ; continue }
  cmd="source '$f'"
  # cmd="bash '$f' -H"
  echo $cmd
  # eval $cmd
  # eval "{$cmd} 2> /dev/null"
done

[[ $f =~ source|cdd ]] && echo "shipping $f"