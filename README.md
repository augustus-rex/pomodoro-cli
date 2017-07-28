# Pomodoro shell script

A pomodoro timer for the UNIX command line. Some of the features
of the script includes:

* Displays a countdown timer while running
* Plays pomodoro-clock sounds, both ticking and alarm sounds
* Displays notification when timer finishes
* Logs started, finished and cancelled pomodoros and breaks

The script has only been tested on Linux, sounds and
notifications won't work on OSX. For someone who knows OSX (I
don't) it should be a pretty easy fix though, and help would be
welcomed.

Some ideas and inspiration have been shamelessly stolen from the
scripts written by users
[rukshn](https://github.com/rukshn/pomodoro) and
[dfernandez79](https://github.com/dfernandez79/pomodoro-cli).
Thanks for the generosity :)


## Installation

Just clone the repository and either run the "pomodoro" script
directly or symlink it to your path.


## Usage and options

	pomodoro [options] [DURATION]

Options

	DURATION	set custom duration in minutes

	-h		display help text and exit
	-b		set timer to break mode. Default break duration is 5 minutes
	-s		play ticking and alarm sounds
	-a		play only alarm sound
	-S 		set DURATION in seconds instead of minutes
	-L		display pomodoro log
	-C		clear pomodoro log
	

## Usage examples

Start a 25 minute pomodoro without sounds

	pomodoro

Start a 20 minute pomodoro with ticking and alarm sounds

	pomodoro -s 20

Start a 5 minute short break without sounds

	pomodoro -b

Start a 15 minute long break and play an alarm sound when break
is finished

	pomodoro -ba 15


## The log file

The script will create a log file where it logs started, finished
and cancelled pomodoros and breaks. The default location of the
file is $HOME/.pomodoro.log. The log file will look something
like this:

	2017-07-27 22:22:10, pomodoro started
	2017-07-27 22:24:30, pomodoro cancelled
	2017-07-27 22:25:00, pomodoro started
	2017-07-27 22:50:00, pomodoro finished
	2017-07-27 22:50:10, break started
	2017-07-27 22:55:10, break finished
