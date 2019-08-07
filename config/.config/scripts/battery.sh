#! /bin/bash

SLEEP_TIME=5        # Default time between checks.
SAFE_PERCENT=30     # Still safe at this level.
DANGER_PERCENT=15   # Warn when battery at this level.
CRITICAL_PERCENT=5  # Hibernate when battery at this level.

BAT_CAUTION=/usr/share/icons/Arc/panel/16/battery-caution.svg
BAT_CHARGING=/usr/share/icons/Arc/panel/16/battery-caution-charging.svg
LOW_BAT=false

function launchNotify {
    notify-send -t 2000 -a "BATTERY WARNING" --urgency=critical -i $BAT_CAUTION "Low Battery ${LEVEL}%" "Discharging"
    mpv $HOME/.config/sounds/dialog-warning.oga &
}

while [ true ]; do
    STATUS=$(cat /sys/class/power_supply/BAT1/status)
    if [[ "$STATUS" == "Discharging" ]]; then
        LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)

        if [[ $LEVEL -gt $SAFE_PERCENT ]]; then
            SLEEP_TIME=10
        else
            SLEEP_TIME=5
            if [[ $LEVEL -le $DANGER_PERCENT ]]; then
                SLEEP_TIME=2
                launchNotify
                LOW_BAT=true
            fi
            if [[ $LEVEL -le $CRITICAL_PERCENT ]]; then
                SLEEP_TIME=1
                systemctl suspend
            fi
        fi
    else
        SLEEP_TIME=300
    fi
    
    STATUS=$(cat /sys/class/power_supply/BAT1/status)
    if [[ "$LOW_BAT" == "true" ]] && [[ "$STATUS" == "Charging" ]]; then
        mpv $HOME/.config/sounds/device-added.oga &
        LOW_BAT=false
    fi
    sleep ${SLEEP_TIME}
done