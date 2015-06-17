#!/bin/sh
PWDN=95
RESET=89

echo 0 > /sys/class/gpio/gpio${PWDN}/value
echo 0 > /sys/class/gpio/gpio${RESET}/value
echo 1 > /sys/class/gpio/gpio${PWDN}/value
msleep 1
echo 1 > /sys/class/gpio/gpio${RESET}/value

