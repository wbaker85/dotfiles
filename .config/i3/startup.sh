#!/bin/bash

termite --class startup1 &
termite --class startup2 &
code &
firefox &
OUTPUT="$(xdotool search --classname --onlyvisible Navigator)"

until [ "$OUTPUT" != ""  ]
do
  sleep 0.1
  OUTPUT="$(xdotool search --classname --onlyvisible Navigator)"
done

xdotool search --classname --onlyvisible Navigator set_window --classname secondary

firefox &
OUTPUT="$(xdotool search --classname --onlyvisible Navigator)"

until [ "$OUTPUT" != ""  ]
do
  sleep 0.1
  OUTPUT="$(xdotool search --classname --onlyvisible Navigator)"
done

xdotool search --classname --onlyvisible Navigator set_window --classname primary