#!/bin/bash
set -e

while read line; do
    case "$line" in \#*) continue ;; esac
    yay -S "$line"
done < ros-packages-list.txt
