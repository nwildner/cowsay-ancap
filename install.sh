#!/usr/bin/env bash

#
# install.sh
#
# Instalation script to add
# anarcho-cows(or sneks)
#
# 2019 - Nícolas Wildner

# Cowsay on Debian-based distros is not on root path,
# (installed inside /usr/games)
COWEXISTS="$(command -v cowsay /usr/games/cowsay | head -1)"
if ! [ -x "$COWEXISTS" ]; then
        echo 'Error: cowsay is not installed.' >&2
        exit 1
fi

if ! [ -w "/usr/share/cows/" ]; then
        echo 'Error: You dont have permission to write cows dir' >&2
        exit 1
fi

echo 'Okay, installing animals without prompt'
install -D $PWD/cows/* /usr/share/cows/
