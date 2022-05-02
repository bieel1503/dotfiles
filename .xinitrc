#!/bin/bash
#Disable laptop screen and set main monitor as primary
#xrandr --output "LVDS-1" --off ;
#xrandr --output "VGA-1" --primary ;
setxkbmap -layout "br" ; #Set keyboard layout.
xset r rate 200 150 ; #Keyboard goes brrrrrr.
xset +dpms & xset dpms 0 0 300 ; #Display turns off when inactive for five minutes.
numlockx ; #Activate numlock
exec dwm
