#!/bin/bash


#if grep -q PATTERN file.txt; then
if pactl list short sinks | grep usb-Dell_Dell_AC511_USB_SoundBar-00; then
	pactl set-card-profile alsa_card.usb-Dell_Dell_AC511_USB_SoundBar-00 off
	notify-send 'Sound' 'Dell speakers is off.'
else
	pactl set-card-profile alsa_card.usb-Dell_Dell_AC511_USB_SoundBar-00 output:analog-stereo
	notify-send 'Sound' 'Dell speakers is on.'
fi

