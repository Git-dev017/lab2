#!/bin/bash
echo "starting SCRIPT, enter the period (seconds):"
read period
while [[ 0 ]]
do
#echo "start WHILE"

wget -F http://ru.euronews.com/weather/europe/belarus/minsk -O weather.txt
string1=$(grep "enw-block__cityWeather__temp-max unit_C ltr" weather.txt | awk -F'">' '{print $2}' | awk -F'<' '{print $1}')
echo $string1
rm *.txt
#echo !!!!!!!!!!!!!!!!!!!!!!!!!!
#echo $1
sleep $period
done
