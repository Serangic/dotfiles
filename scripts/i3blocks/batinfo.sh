#!/usr/bin/env bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
statu=$(cat /sys/class/power_supply/BAT0/status)

icon=""
color="#ffffff"

if [ "$capacity" -le 20 ]; then
    color="#fc3838"
    icon="󰁻"
elif [ "$capacity" -le 30 ]; then
    color="#fc7938"
    icon="󰁼"
elif [ "$capacity" -le 40 ]; then
    color="#fcc838"
    icon="󰁽"
elif [ "$capacity" -le 50 ]; then
    color="#6cfc38"
    icon="󰁾"
elif [ "$capacity" -le 75 ]; then
    color="#6cfc38"
    icon="󰂀"
elif [ "$capacity" -le 85 ]; then
    color="#b1fc38"
    icon="󰂁"
else
    color="#fcc838"
    icon="󰂃"
fi

echo "$icon ${capacity}%"
echo "$statu"
echo "$color"
