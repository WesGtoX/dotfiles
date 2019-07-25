#!/bin/bash

pidof dunst && killall dunst
dunst &

notify-send -a "TEST" "message one"
notify-send -a "TEST" "message two"
notify-send -a "TEST" "message three"
notify-send -a "TEST" "message four four four four four four four four four four four four four four four four four"
notify-send -a "TEST" "message four five\n
message four five\n
message four five\n
message four five\n"

notify-send -a "LOW" "LOW" --urgency low
notify-send -a "NORMAL" "NORMAL" --urgency normal
notify-send -a "CRITICAL" "CRITICAL" --urgency critical