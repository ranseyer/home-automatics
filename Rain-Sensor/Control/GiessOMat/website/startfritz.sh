#!/bin/bash
ttyport=/dev/ttyUSB0
stty -F $ttyport 38400
echo c > $ttyport
echo "schreibe Giess-o-mat output aus $ttyport in giess.csv"
cat $ttyport > giess.csv
httpd-webcfg -P /var/run/webcfg.pid -p 82 -h /var/media/ftp/uStor01/website/ -r Freetz

