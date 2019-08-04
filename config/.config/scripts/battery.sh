#!/bin/bash
BAT_CAUTION=/usr/share/icons/Arc/panel/16/battery-caution.svg
BAT_CHARGING=/usr/share/icons/Arc/panel/16/battery-caution-charging.svg
LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)

if [[ $LEVEL -lt 20 ]] ; then
        if [[ "$STATUS" == "Discharging" ]]; then
          notify-send -a "BATTERY WARNING" --urgency=critical -i $BAT_CAUTION "Low Battery ${LEVEL}%" "Discharging"
          while [[ "$STATUS" == "Discharging" ]]; do
            mpv $HOME/.config/sounds/dialog-warning.oga &
            sleep 2
            STATUS=$(cat /sys/class/power_supply/BAT1/status)
          done
        fi

        if [[ "$STATUS" == "Charging" ]]; then
            notify-send -a "BATTERY WARNING" --urgency=low -i $BAT_CHARGING "Charging Battery ${LEVEL}%"
            mpv $HOME/.config/sounds/device-added.oga &
        fi
fi
