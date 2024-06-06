#!/bin/bash
 
 sh -c '"/opt/tor-browser_en-US/Browser/start-tor-browser" --detach || ([ !  -x "/opt/tor-browser_en-US/Browser/start-tor-browser" ] && "$(dirname "$*")"/Browser/start-tor-browser --detach)' dummy %k 

sleep 13