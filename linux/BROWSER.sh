#!/bin/bash


ulimit -v 8192000 && firefox -new-window --disable-gpu  &
sleep 3
PID=$(pgrep firefox)
ulimit -aH | grep "virtual memory"
ulimit -aS | grep "virtual memory"
sleep 3 
ps -o pid,rss,vsz -p $PID
sleep 10