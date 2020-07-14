#!/bin/bash

killall -q polybar
killall -q picom

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

nohup polybar mybar & 
nohup picom &

echo "boom bap pow"


