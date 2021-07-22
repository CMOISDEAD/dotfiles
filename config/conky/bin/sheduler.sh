#!/bin/sh

# Variables
dir="/home/camilo/.config/conky/days/"
currentDate=$(date +"%A")

# Functions
if [ $currentDate == "lunes" ]
then
    awk '{printf "%d. %s\n", NR, $0}' < "$dir/lunes.md"| fmt --width=50 -s
elif [ $currentDate == "martes" ]
then
    awk '{printf "%d. %s\n", NR, $0}' < "$dir/martes.md"| fmt --width=50 -s
elif [ $currentDate == "miércoles" ]
then
    awk '{printf "%d. %s\n", NR, $0}' < "$dir/miercoles.md"| fmt --width=50 -s
elif [ $currentDate == "jueves" ]
then
    awk '{printf "%d. %s\n", NR, $0}' < "$dir/jueves.md"| fmt --width=50 -s
elif [ $currentDate == "viernes" ]
then
    awk '{printf "%d. %s\n", NR, $0}' < "$dir/viernes.md"| fmt --width=50 -s
else
  echo "Fin de semana"
fi
