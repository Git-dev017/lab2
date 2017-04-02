#!/bin/bash
echo "Start download page"
wget -F http://ru.euronews.com/weather/europe/belarus/minsk -O weather.txt
grep "enw-block__cityWeather__temp-max unit_C ltr" weather.txt > cache.txt
delimiter=$(awk -F'">' '{print $2}' cache.txt)
#echo "checkpoint"
echo $delimiter > cache.txt
#echo $delimiter
delimiter=$(awk -F'</' '{print $1}' cache.txt)
echo $delimiter
rm *.txt

