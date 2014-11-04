#turn off beep sound
/usr/bin/xset b off

#set enviroment for inputmethod
export XIM=fcitx
export XMODIFIERS='@im=fcitx'
export XIM_PROGRAM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
fcitx -d &

xrdb ~/.Xresources

#start wicd-client
wicd-client &

#xcompmgr -c &
xcompmgr -Ss -n -Cc -fF -I-10 -O-10 -D1 -t-3 -l-4 -r4 &
#start up guake terminal
#guake &

synclient TapButton1=1 TapButton2=1 VertEdgeScroll=1
#eval `dbus-launch --sh-syntax --exit-with-session`
#exec gnome-session
exec dbus-launch --sh-syntax --exit-with-session ck-launch-session awesome
#sleep 10

#~/.conky/startup.sh &

#exec awesome
#exec enlightenment_start
#exec startxfce4
#exec /usr/share/e16/misc/starte16
