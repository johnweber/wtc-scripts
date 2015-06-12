#!/bin/sh

# allocate and set PWR_DWN_N to high
echo 191 > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio191/direction
echo 1 > /sys/class/gpio/gpio191/value

# allocate and toggle RESET_N
echo 91 > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio91/direction
echo 0 > /sys/class/gpio/gpio91/value
msleep 1
echo 1 > /sys/class/gpio/gpio91/value

