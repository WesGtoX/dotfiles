#!/bin/bash

pidof dunst && killall dunst
dunst &

notify-send "message one"
notify-send "message two"
notify-send "message three"
notify-send "message four four four four four four four four four four four four four four four four four"
notify-send "message four five\n
message four five\n
message four five\n
message four five\n"