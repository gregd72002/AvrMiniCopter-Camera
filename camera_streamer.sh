#!/bin/sh
if [ "$1" != "start" ]; then
	echo "stoping"
	killall raspivid
else
#	raspivid -n -w 640 -h 480 -b 750000 -fps 24 -g 60 -t 0 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink port=$3 host=$2 &
	raspivid -n -w 640 -h 480 -b 750000 -ex sports -fps 24 -g 60 -t 0 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink port=$3 host=$2 &
#	raspivid -n -w 640 -h 480 -b 1000000 -ex sports -fps 24 -g 60 -t 0 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink port=$3 host=$2 &
#	raspivid -n -w 1280 -h 768 -b 4500000 -ex auto -fps 24 -g 60 -t 0 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink port=$3 host=$2 &
	echo "starting;"
fi
