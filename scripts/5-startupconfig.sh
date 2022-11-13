#!/usr/bin/env bash

chown -R matias:matias . /home/matias

echo '* CHANGED PERMISSIONS TO $USER'

chmod +x /home/matias/.config/bspwm/bspwmrc 
chmod +x /home/matias/.config/sxhkd/sxhkdrc

#echo "
#setxkbmap us &
#exec bspwm">>/home/matias/.xinitrc

echo '* BSPWM AUTOLAUNCHER CONFIGURED'

#echo "
#setxkbmap us &
#exec bspwm
#startx & bspwm">>.xinitrc
