#!/usr/bin/env bash
# Loop the pomodoro ticking noise. The ticking soundfile is only about 15
# minutes long, so without a loop it won't last a whole pomodoro.

script_dir="$(dirname "$(readlink -f "$0")")"

while [ 1 ]; do
	paplay $script_dir/sounds/pomodoroclock_ticking.ogg
done
