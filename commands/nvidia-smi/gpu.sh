if [ $(nvidia-smi 2> /dev/null) ]; then
  echo "Great, you have a GPU."
else
  echo "Oops, you have no GPU."
fi
