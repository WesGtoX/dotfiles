#!/bin/sh
ICON_PATH=/usr/share/icons/Arc/places/32/user-trash.png
case "$1" in
    --clean)
        rm -rf ~/.local/share/Trash/files
        rm -rf ~/.local/share/Trash/info
        mkdir ~/.local/share/Trash/files
        mkdir ~/.local/share/Trash/info
        notify-send -a "Trash" "Empty Trash..." --urgency low -i $ICON_PATH
        ;;
    *)
        # find ~/.local/share/Trash/files/ -maxdepth 1 | wc -l
        du -a $HOME/.local/share/Trash/files/* 2>/dev/null | wc -l
        ;;
esac
