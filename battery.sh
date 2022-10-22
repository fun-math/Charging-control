#!/bin/bash
while true
    do
        export DISPLAY=:0.0
        battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
        if on_ac_power; then                                #check if AC is plugged in
            if [ $battery_level -ge 90 ]; then              #check if the battery level is over 90%
                notify-send -u critical "Please unplug your AC adapter" "Battery level: ${battery_level}% (charged above 90%)" -i battery-full-charged
		play Charging-control/wide_putin.mp3
             fi
	else
	     if [ $battery_level -le 20 ]; then              #check if the battery level is over 90%
                notify-send -u critical "Please plug your AC adapter" "Battery level: ${battery_level}% (charging below 20%)" -i battery-full-charged
		play Charging-control/coffindance.mp3
             fi
        fi
      sleep 120                                             #wait for 300 seconds before checking again

    done
