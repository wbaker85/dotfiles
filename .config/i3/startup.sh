#!/bin/bash

termite --class startup1 &
termite --class startup2 &
code &
google-chrome-stable &
OUTPUT="$(xdotool search --classname --onlyvisible google-chrome)"

until [ "$OUTPUT" != ""  ]
do
  sleep 0.1
  OUTPUT="$(xdotool search --classname --onlyvisible google-chrome)"
done

xdotool search --classname --onlyvisible google-chrome set_window --classname secondary

google-chrome-stable &
OUTPUT="$(xdotool search --classname --onlyvisible google-chrome)"

until [ "$OUTPUT" != ""  ]
do
  sleep 0.1
  OUTPUT="$(xdotool search --classname --onlyvisible google-chrome)"
done

xdotool search --classname --onlyvisible google-chrome set_window --classname primary