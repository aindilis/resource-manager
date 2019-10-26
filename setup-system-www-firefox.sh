#!/bin/sh

# Xvfb :2 -screen 0 1280x800x24
Xvfb :2 -screen 0 1920x1080x24
sudo x11vnc -display :2 -shared -passwd '<REDACTED>'
export DISPLAY=:2
metacity &

# TTS read aloud entry

# shift buttons or whatever for display on 1280x800

# make it actually save reason for not applying

# add reason that the company has a bad rap ectT
