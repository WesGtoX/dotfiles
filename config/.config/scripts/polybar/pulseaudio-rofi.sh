#!/bin/bash

inputs() {
    INPUT=$(pactl list short sources | cut  -f 2 | grep input | rofi -dmenu -p "Input" -mesg "Select prefered input source" )
    pacmd set-default-source "$INPUT" >/dev/null 2>&1

    for recording in $(pacmd list-source-outputs | awk '$1 == "index:" {print $2}'); do
        pacmd move-source-output "$recording" "$INPUT" >/dev/null 2>&1
    done
}

volume_source_up() {
    pactl set-source-volume @DEFAULT_SOURCE@ +2%
}

volume_source_down() {
    pactl set-source-volume @DEFAULT_SOURCE@ -2%
}

mute_source() {
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
}

get_default_source() {
    pacmd stat | awk -F": " '/^Default source name: /{print $2}'
}

input_volume() {
     pacmd list-sources | awk '/^\s+name: /{indefault = $2 == "'"<$(get_default_source)>"'"}
             /^\s+muted: / && indefault {muted=$2}
             /^\s+volume: / && indefault {volume=$5}
             END { print muted=="no"? " "volume:"" }'
}

output_volume_listener() {
    pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "change"; then
            output_volume
        fi
    done
}

input_volume_listener() {
    pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "change"; then
            input_volume
        fi
    done
}

case "$1" in
    --input)
        inputs
    ;;
    --mute_source)
        mute_source
    ;;
    --volume_source_up)
        volume_source_up
    ;;
    --volume_source_down)
        volume_source_down
    ;;
    --input_volume)
        input_volume
    ;;
    --input_volume_listener)
        input_volume
        input_volume_listener
    ;;
    *)
        echo "Wrong argument"
    ;;
esac
