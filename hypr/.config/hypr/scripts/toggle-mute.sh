#!/bin/bash
pactl set-sink-mute @DEFAULT_SINK@ toggle
mute_status=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$mute_status" = "yes" ]; then
    swayosd-client --output-volume mute
else
    swayosd-client --output-volume unmute
fi

