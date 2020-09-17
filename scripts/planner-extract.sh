#!/usr/bin/env zsh

dir=/home/seth/Documents/planner
file=$dir/planner.pdf
pagefile=$dir/planner-today.pdf
pg=$(echo $(pdfinfo $file) | awk '{ print $24 }')

#if nc -z rm-host-usb
#scp remarkable-usb:.local/share/remarkable/xochitl/93fcb1db-d050-4f82-b1b5-167e724f19ad.pdf $file

#pdfseparate -f $pg $file $pagefile


if [ $# -eq 0 ]; then
    i=-1
else
    i="$1"
fi
echo "arg is $i"

zathura --fork --page="$i" $file 
