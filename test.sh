#!/bin/bash

min=0
while [ $min -lt 60 ]
  do
    if [ $min -lt 10 ]; then
      nok=$(grep "\:0$min\:" $1 | grep NOK | wc -l)
    else
      nok=$(grep "\:$min\:" $1 | grep NOK | wc -l)
    fi
    if [ $nok != 0 ]; then
      echo "$min $nok"
    fi
    (( min++ ))
  done
