#!/bin/bash

timedatectl set-timezone America/Denver
cp ~/screens/sleeping.png /usr/share/remarkable
cp ~/screens/suspended.png /usr/share/remarkable

cd /usr/share/remarkable/templates
for f in *; do
    if [[ -f "$f" ]]; then
        if [[ ! -f ~/screens/templates/"$f" ]]; then
            cp "$f" ~/screens/templates
        fi
        rm "$f"
    fi
done
cd ~/screens/templates
for f in *; do
    if [[ ! -f /usr/share/remarkable/templates/"$f" ]]; then
        ln -s ~/screens/templates/"$f" /usr/share/remarkable/templates/"$f"
    fi
done
cd /usr/share/remarkable/templates