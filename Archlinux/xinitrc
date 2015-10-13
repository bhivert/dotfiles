
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES=C

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

ibus-daemon -drx

unclutter -idle 1 -jitter 2 -root &

xset -b
xset r rate 185 50
setxkbmap -option terminate:ctrl_alt_bksp

urxvtd --quiet --opendisplay --fork

xrdb merge ~/.Xresources
exec i3
