#!/bin/sh
PWDN=95
RESET=89

# allocate and set PWR_DWN_N to high
echo $PWDN > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio${PWDN}/direction
echo 1 > /sys/class/gpio/gpio${PWDN}/value

# allocate and toggle RESET_N
echo $RESET > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio${RESET}/direction
echo 0 > /sys/class/gpio/gpio${RESET}/value
msleep 1
echo 1 > /sys/class/gpio/gpio${RESET}/value
