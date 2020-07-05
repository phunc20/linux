#!/bin/bash
#URL_HEAD="http://localhost:8889/tree/"
URL_HEAD="http://localhost:8888/tree/"
URL_TAIL=$(echo $PWD | cut -d / -f 4-)
# Why 4-, i.e. from 4 on including 4?
# field
# 1 emtpy
# 2 home
# 3 $USER
#URL="${URL_HEAD}${URL_TAIL}"
URL=${URL_HEAD}${URL_TAIL}
printf $URL | xclip -sel c
