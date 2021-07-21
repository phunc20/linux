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
