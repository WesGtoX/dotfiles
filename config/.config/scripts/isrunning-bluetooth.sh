#!/bin/sh

if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
	echo " %{F#98de00}%{F-}"
else
	echo " "
fi
