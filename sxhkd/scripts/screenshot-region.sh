#!/bin/bash
dateTime=$(date '+%Y%m%d%H%M%S')
sleep 0.1
mkdir -p $HOME/'Pictures/Screenshots'
scrot -s -q 100 $HOME/'Pictures/Screenshots/'$dateTime'.png'
if [[ $? == 0 ]]; then
  notify-send -i $HOME/'Pictures/Screenshots/'$dateTime'.png' "Receipt acquired!" "Screenshot saved at "$dateTime'.png'
fi  
