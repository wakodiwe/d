source ~/.environment

xinput --disable "SynPS/2 Synaptics TouchPad"
# xinput enable "SynPS/2 Synaptics TouchPad"

pgrep -x picom > /dev/null || \
  picom  --config "$XDG_CONFIG_HOME/picom/picom.conf" --backend glx &


numlockx

xset s off -dpms

setxkbmap de

setxkbmap -option caps:escape

xmodmap ~/.xmodmaprc

# xrdb -D"$(cat $XDG_DATA_HOME/chcolors)" ~/.xresources
xrdb -D"dark" ~/.xresources

pgrep -x sxhkd > /dev/null || \
  sxhkd &

# pulseaudio --start

# nm-applet &
# blueman-applet &
# statusbar &

st &
bspwm

# vim: ft=sh
