if [ "$(tty)" = "/dev/ttyv0" ]; then
    source ~/.zlogin
    exec startx
fi
