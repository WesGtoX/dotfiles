#!/bin/bash

pidof dunst && killall dunst
dunst &

notify-send -a "TEST" "message one"

notify-send -a "TEST" "message two"

notify-send -a "TEST" "message three"

notify-send -a "TEST" "message one, two, three, four, five, six, seven, eight, nine, ten"

notify-send -a "TEST" "line message one two\n
                       line message three four\n
                       line message five six\n
                       line message seven eight\n
                       line message nine ten\n"

notify-send -a "LOW" "LOW" --urgency low

notify-send -a "NORMAL" "NORMAL" --urgency normal

notify-send -a "CRITICAL" "CRITICAL" --urgency critical