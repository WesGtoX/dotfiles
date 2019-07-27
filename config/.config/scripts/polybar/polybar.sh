# kill all polybar processes
killall -q polybar

# wait all polybar processes kill
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# start bars
polybar top &
polybar bottom &
# polybar example &