#!/bin/bash

# Get the charging status
STATUS=$(acpi -a | grep -o 'on-line')

# Set the display name
DISPLAY_NAME="eDP-1"  # Change this to your actual display name

if [ "$STATUS" == "on-line" ]; then
    # If on charge, set to 165Hz
    xrandr --output $DISPLAY_NAME --mode 1920x1200 --rate 165.00
else
    # If not on charge, set to 60Hz
    xrandr --output $DISPLAY_NAME --mode 1920x1200 --rate 60.02
fi
