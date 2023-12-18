#!/bin/bash
for device in $(xinput list | grep 'Touchpad' | cut -d'=' -f2 | cut -d'[' -f1)
do
 #echo $device
 xinput --set-int-prop $device "libinput Natural Scrolling Enabled" 8 1
done
