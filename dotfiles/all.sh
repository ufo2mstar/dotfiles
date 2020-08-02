for f in .*.sh ; do  # or wget-*.sh instead of *.sh
  echo bash "$f" -H 
done