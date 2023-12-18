#!/bin/bash

pkill mate-notificati
b=$(brightnessctl g)
case $1 in
    "plus")
    /usr/bin/brightnessctl set +10% &>/dev/null;;
    "minus")
      if [ "$b" != "150" ]; then
      /usr/bin/brightnessctl set 10%- &>/dev/null
      fi
      ;;
esac
let b=b*1/15
notify-send -t 2000 -i /home/santiago/.config/sxhkd/assets/brillo.png "Brillo actual" "$b%"
