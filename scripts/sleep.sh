#!/bin/sh
swayidle -w \
timeout 5 "~/.config/hypr/scripts/lock.sh & sleep 1 && hyprctl dispatch dpms off" \
resume 'hyprctl dispatch dpms on' \
timeout 10 'systemctl suspend'
