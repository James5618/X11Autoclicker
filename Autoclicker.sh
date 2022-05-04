#!/usr/bin/env bash


echo "=== autoclicker.sh | ver. 4.2.0 ==="
echo " "


sleep 2
clear
# Select Mouse Button Pressed
echo "=== autoclicker.sh | ver. 4.2.0 ==="
echo "What mouse button would you like pressed?"
echo "1 (left), 2 (middle), or 3 (right). "
read mouse
sleep 1
clear
echo "=== autoclicker.sh | ver. 4.2.0 ==="
# duration
echo " "
echo "Duration of seconds between each mouse press? "
read clock

sleep 1
clear
echo "=== autoclicker.sh | ver. 4.2.0 ==="
echo " "
echo -e "This script will begin in 5 seconds with these settings:"
echo "Mouse: $mouse  Delay: $clock"
echo -e "Use [Ctrl-C] in this terminal to quit the script."
sleep 5

#Clicking loop.

while [ 1 ]; do
    xdotool click $mouse &
    sleep $clock
done
