#!/bin/sh

find config -type d -exec mkdir ~/.'{}' \;
find config -type f -exec ln -s $(pwd)/'{}' ~/.'{}' \;

ln -s $(pwd)/tmux.conf ~/.tmux.conf
