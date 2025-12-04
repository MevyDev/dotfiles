#!/bin/bash
hyprctl reload
killall waybar hyprpaper dunst 2>/dev/null
waybar &
hyprpaper &
dunst &
