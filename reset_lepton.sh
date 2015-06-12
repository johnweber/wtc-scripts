#!/bin/sh

echo 0 > /sys/class/gpio/gpio191/value
echo 0 > /sys/class/gpio/gpio91/value
echo 1 > /sys/class/gpio/gpio191/value
msleep 1
echo 1 > /sys/class/gpio/gpio91/value

