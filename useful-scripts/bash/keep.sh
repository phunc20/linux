which=$3
#printf "which = $which\n"
case $which in
  first)
    keep=$(ls $1 | head -n $2)
    ;;
  last)
    keep=$(ls $1 | tail -n $2)
    ;;
  random)
    ;;
  *)
    # default to "first"
    keep=$(ls $1 | head -n $2)
    ;;
esac

#printf "keep = $keep\n"
#exit 0
for file in $(ls $1); do
  #if !("$file" in $keep); then
  if ! grep "$file" <(echo $keep) > /dev/null; then
    echo "rm $1/$file"
    rm "$1/$file"
  fi
done
