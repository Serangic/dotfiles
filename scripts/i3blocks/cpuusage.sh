#!/usr/bin/env bash

read -r _ user nice system idle iowait _ < /proc/stat

# DEBUGGING DIVISION BY 0 ERRORS, _ FIXED IT JUST FINE
# echo "user=$user nice=$nice system=$system idle=$idle iowait=$iowait"

prev_idle=$((idle + iowait))
prev_total=$((user + nice + system + idle + iowait))

sleep 1

read -r _ user nice system idle iowait _ < /proc/stat

curr_idle=$((idle + iowait))
curr_total=$((user + nice + system + idle + iowait))

diff_total=$((curr_total - prev_total))
diff_idle=$((curr_idle - prev_idle))

if [ "$diff_total" -eq 0 ]; then
    echo "Div by 0, CPU"
    exit
fi

usage=$(( (100 * (diff_total - diff_idle)) / diff_total ))

color="#ffffff"

if [[ "$usage" -le 20 ]]; then
    color="#5af542"
elif [[ "$usage" -le 40 ]]; then
    color="#ddf542"
elif [[ "$usage" -le 60 ]]; then
    color="#f59b42"
elif [[ "$usage" -le 80 ]]; then
    color="#f56042"
else
    color="#ff2b2b"
fi

echo "${usage}%"
echo "CPU Usage"
echo "${color}"
   
   

