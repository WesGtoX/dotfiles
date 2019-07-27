#!/bin/bash
source ~/.token

get_icon() {
    case $1 in
        01d) icon="";; #   Hack Nerd Font Example
        01n) icon="";; #   Hack Nerd Font Example
        02d) icon="";; #   Hack Nerd Font Example
        02n) icon="";; #   Hack Nerd Font Example
        03*) icon="";; #   Hack Nerd Font Example
        04*) icon="";; #   Hack Nerd Font Example
        09d) icon="";; #   Hack Nerd Font Example
        09n) icon="";; #   Hack Nerd Font Example
        10d) icon="";; #   Hack Nerd Font Example
        10n) icon="";; #   Hack Nerd Font Example
        11d) icon="";; #   Hack Nerd Font Example
        11n) icon="";; #   Hack Nerd Font Example
        13d) icon="";; #   Hack Nerd Font Example
        13n) icon="";; #   Hack Nerd Font Example
        50d) icon="";; #   Hack Nerd Font Example
        50n) icon="";; #   Hack Nerd Font Example
        *) icon="";    #   Hack Nerd Font Example
    esac

    echo $icon
}

get_duration() {

    osname=$(uname -s)

    case $osname in
        *BSD) date -r "$1" -u +%H:%M;;
        *) date --date="@$1" -u +%H:%M;;
    esac

}

KEY="$WEATHER_TOKEN"
CITY="3447651"
UNITS="metric"
SYMBOL="°"

API="https://api.openweathermap.org/data/2.5"

if [ -n "$CITY" ]; then
    if [ "$CITY" -eq "$CITY" ] 2>/dev/null; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi

    current=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
    forecast=$(curl -sf "$API/forecast?appid=$KEY&$CITY_PARAM&units=$UNITS&cnt=1")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        current=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
        forecast=$(curl -sf "$API/forecast?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS&cnt=1")
    fi
fi

if [ -n "$current" ] && [ -n "$forecast" ]; then
    current_temp=$(echo "$current" | jq ".main.temp" | cut -d "." -f 1)
    current_icon=$(echo "$current" | jq -r ".weather[0].icon")

    forecast_temp=$(echo "$forecast" | jq ".list[].main.temp" | cut -d "." -f 1)
    forecast_icon=$(echo "$forecast" | jq -r ".list[].weather[0].icon")


    if [ "$current_temp" -gt "$forecast_temp" ]; then
        trend=""   #   Hack Nerd Font Example
    elif [ "$forecast_temp" -gt "$current_temp" ]; then
        trend=""   #   Hack Nerd Font Example
    else
        trend=""   #   Hack Nerd Font Example
    fi


    sun_rise=$(echo "$current" | jq ".sys.sunrise")
    sun_set=$(echo "$current" | jq ".sys.sunset")
    now=$(date +%s)

    if [ "$sun_rise" -gt "$now" ]; then
        daytime=" $(get_duration "$((sun_rise-now))")" #   Hack Nerd Font Example
    elif [ "$sun_set" -gt "$now" ]; then
        daytime=" $(get_duration "$((sun_set-now))")"  #   Hack Nerd Font Example
    else
        daytime=" $(get_duration "$((sun_rise-now))")" #   Hack Nerd Font Example
    fi

    echo "$(get_icon "$current_icon") $current_temp$SYMBOL  $trend  $(get_icon "$forecast_icon") $forecast_temp$SYMBOL   $daytime"
fi
