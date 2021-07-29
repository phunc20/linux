#!/bin/bash

function resolution() {
  if [ $# -ne 1 ]; then
    printf "This command only accepts exactly one input arg.\n"
    printf "Example usage:\n"
    printf "resolution favorite_movie.mp4\n"
  else
    ffprobe -v error -show_entries stream=width,height -of default "$1" | grep -E "width|height"
  fi
}

function dusort() {
  if [ $# -lt 1 ]; then
    printf "Please provide a or more file(s)/folder(s) as arg\n"
    #sudo du -hsx * | sort -h
  else
    sudo du -hsx $@ | sort -h
  fi
}



clipboard-notify() {
  millisec=5000
  notify-send --expire-time=$millisec "$(xclip -o)"
}

resolution() {
  # ===================================
  #  Implementation 01:
  #  Cannot deal with `resolution *.mp4`
  # ===================================
  #if [ $# -ne 1 ]; then
  #  printf "This command only accepts exactly one input arg.\n"
  #  printf "Example usage:\n"
  #  printf "resolution favorite_movie.mp4\n"
  #else
  #  ffprobe -v error -show_entries stream=width,height -of default "$1" | grep -E "width|height"
  #fi

  # ===================================
  #  Implementation 02:
  #  Able to deal with `resolution *.mp4`
  # ===================================
  if [ $# -lt 1 ]; then
    printf "This command requires at least one input arg.\n"
    printf "Example usage:\n"
    printf "resolution favorite_movie.mp4\n"
    printf "resolution *.mp4\n"
  else
    for file in "$@"
    do
      printf "$file\n" | sed 's/.*\///'
      # the `sed` above is to keep only the file name, getting rid of the path to its mother folder
      ffprobe -v error -show_entries stream=width,height -of default "$file" | grep -E "width|height"
    done
  fi
}
