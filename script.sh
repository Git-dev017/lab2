#!/bin/bash
wget -F http://ru.euronews.com/weather/europe/belarus/minsk -O weather.txt
string1=$(grep "enw-block__cityWeather__temp-max unit_C ltr" weather.txt | awk -F'">' '{print $2}' | awk -F'<' '{print $1}')
echo $string1
rm *.txt
