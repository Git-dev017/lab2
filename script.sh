#!/bin/bash
echo "Start download page"
wget -F http://ru.euronews.com/weather/europe/belarus/minsk -O weather
string1=$(grep "stat enw-temp__color-19 unit_C ltr" weather > cache.txt)
echo "CheckPoint!"
echo $string1

#rm weather

