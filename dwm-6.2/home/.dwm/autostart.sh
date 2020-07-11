#!/bin/bash
xbacklight 35
feh --bg-scale ~/Downloads/lines_stripes_dots_171478_1366x768.jpg
xinput set-prop "bcm5974" "libinput Tapping Enabled" 1
xinput set-prop "bcm5974" "libinput Natural Scrolling Enabled" 1
firefox &
while [ : ]
do
	xsetroot -name "(`acpi -b | cut -d ":" -f2- | sed 's/remaining//' | sed 's/Full,//' | sed 's/Discharging,/Battery/' |xargs`) `date +"%d/%m/%y %H:%M"`"
	sleep 5
done
