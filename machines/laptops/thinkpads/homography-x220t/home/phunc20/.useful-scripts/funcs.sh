#!/bin/bash

#mkcd() {
#    if [ "$#" -ne 1 ]; then
#        echo "Exactly one input arg required."
#    else
#        mkdir -p "$1"
#        cd "$1"
#    fi
#}


resolution() {
    if [ $# -ne 1 ]; then
        printf "This command only accepts exactly one input arg.\n"
        printf "Example usage:\n"
        printf "resolution favorite_movie.mp4\n"
    else
        ffprobe -v error -show_entries stream=width,height -of default "$1" | grep -E "width|height"
    fi
}

