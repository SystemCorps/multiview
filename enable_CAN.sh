#!/bin/bash

sudo modprobe can
sudo modprobe can_raw
sudo modprobe mttcan
sudo ip link set can0 type can bitrate 500000 dbitrate 2000000 berr-reporting on fd on
sudo ip link set can1 type can bitrate 500000 dbitrate 2000000 berr-reporting on fd on
sudo ip link set up can0
sudo ip link set up can1

exit 0
