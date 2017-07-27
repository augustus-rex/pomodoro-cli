#!/usr/bin/env bash
# Loop the pomodoro ticking noise. The ticking soundfile is only about 15
# minutes long, so without a loop it won't last a whole pomodoro.

while [ 1 ]; do
	paplay ./sounds/pomodoroclock_ticking.ogg
done
