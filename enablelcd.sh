#!/bin/bash
sudo modprobe fbtft_device name=adafruit18 busnum=2 cs=1 rotate=270 gpios=reset:47,dc:64
sudo systemctl stop getty@tty1.service
sudo rm /dev/tty
sudo ln -s /dev/tty1 /dev/tty
sudo chmod go+rw /dev/tty1