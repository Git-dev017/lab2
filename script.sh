#!/bin/bash
#echo "starting SCRIPT!"
minute=60
date_prev=$(date +"%M")
dif_time=0
while [[ $dif_time < $1 ]]
do
#echo "start WHILE"
date_now=$(date +"%M")

if [[ date_prev < date_now ]]
then
let "dif_time=date_prev+date_now"
let "dif_time=dif_time-60"
#echo "date_prev>date_now " $dif_time
else
let "dif_time=date_now-date_prev"
echo "date_prev<date_now " $dif_time
fi

done

wget -F http://ru.euronews.com/weather/europe/belarus/minsk -O weather.txt
string1=$(grep "enw-block__cityWeather__temp-max unit_C ltr" weather.txt | awk -F'">' '{print $2}' | awk -F'<' '{print $1}')
echo $string1
rm *.txt
#echo !!!!!!!!!!!!!!!!!!!!!!!!!!
#echo $1
./script.sh $1
