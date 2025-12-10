#!/bin/bash
current_status=$(brightnessctl -d input3::scrolllock | grep -oP '\d+%' | head -n 1)

if [[ $current_status == "0%" ]]; then
  brightnessctl -d input3::scrolllock s 1
else
  brightnessctl -d input3::scrolllock s 0
fi
