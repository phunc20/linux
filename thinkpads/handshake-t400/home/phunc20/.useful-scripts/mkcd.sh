#!/bin/bash

#mkcd() {
#    [ "$#" -ne 1 ] && echo "Only one input arg allowed." && exit 1
#    [ -z "$1" ] && echo "Please provide one input arg." && exit 1
#    mkdir -p "$1"
#    cd "$1"
#}

## The above seems to work badly because the `exit 1` makes the shell to close itself.

mkcd() {
    if [ "$#" -ne 1 ]; then
        echo "Exactly one input arg required."
    else
        mkdir -p "$1"
        cd "$1"
    fi
}

#v() {
#    local dst ="$(command vifm --choose-dir - "$@")"
#    if [ -z "$dst" ]; then
#        echo "Directory picking cancelled/failed"
#        return 1
#    fi
#    cd "$dst"
#}


