#!/bin/sh

printf "Your distro is: "
case $(uname -a) in
  *Debian*)
    printf "Debian\n"
    ;;
  *artix*)
    printf "artix\n"
    ;;
  *)
    printf "I don't know...\n"
    ;;
esac
