#!/bin/bash
hyprctl reload
killall waybar rofi hyprpaper dunst 2>/dev/null
waybar &
rofi &
hyprpaper &
dunst &
