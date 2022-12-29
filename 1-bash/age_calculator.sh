#!/bin/bash
echo "Please enter your Name"
read name
echo "Enter your birth year (yyyy)"
read yyyy
echo "Enter the month you were born (mm)"
read mm
echo "Enter the day of the month you were born (dd)"
read dd
echo "Enter the hour in which you were born (HH)"
read HH
echo "Enter the minute of the hour you were born (MM)"
read MM

y=$(date +%Y)
#m=$(date +%m)
#d=$(date +%d)
#H=$(date +%H)
#M=$(date +%M)
#j_dob=$(date --date="${yyyy}${mm}${dd}" +%j)
#j_now=$(date +%j)

#years_diff=$(($y-$yyyy))
#months_diff=$(($m-$mm))
#days_diff=$(($j_now-$j_dob))
#hours_diff=$(($H-$HH))
#minutes_diff=$(($M-$MM))

#age_minutes=$(($minutes_diff+$(($hours_diff*60))+$(($days_diff*24*60))+$(($years_diff*365*24*60))))

s_dob=$(date --date "${yyyy:2:4}$mm$dd" +%s)

sec_dob=$(($s_dob+$HH*60*60+$MM*60))
sec_now=$(date +%s)


#echo $s_dob
#echo "sec_dob = $sec_dob"
#echo "sec_now = $sec_now"

age_seconds=$(($sec_now-$sec_dob))
age_minutes=$(($age_seconds/60))
age_hours=$(($age_minutes/60))
age_days=$(($age_hours/24))
age_years=$(($age_days/365))

#echo "age_seconds = $age_seconds"
echo " "
sleep 1
echo "Hi, $name"
sleep 1
echo " "

#if [  expr length "$mm" -ne 2 || expr length "$dd" -ne 2 || expr length "$HH" -ne 2 || expr length "$MM" -ne 2  ]
#then
#	echo "wrong format input"
#        sleep 1
#	echo "please make sure you enter details in yyyy, mm, dd, HH, SS format"
#if


if [  $(($yyyy-$y)) -ge 100  ]
then
	sleep 1
	echo "You are not born yet!!"
	sleep 2
	echo "please wait for another century or more"
	exit
fi

if [  $(($yyyy-$y)) -le -100  ]
then
	sleep 1
	echo "It has been more a century or more since you were born!!"
	sleep 2
	echo "bye bye"
	exit
fi

if [  $age_seconds -gt 60  ]
then
        sleep 2
	echo "your age in seconds = $age_seconds"
       	sleep 2
	echo "and it has been $age_minutes minutes since you were born"
	sleep 2
	echo "in hours, you are $age_hours"
	sleep 2
	echo "and you are $age_days days old"
	sleep 2
	echo "So, you are around $age_years years old"
elif [  $age_seconds -lt 0  ]
then
        sleep 2
	echo "You are not born yet!!!"
	sleep 2
	echo "you will be born in $((0-$age_seconds)) seconds"
	sleep 2
	echo "please wait for another $((0-$age_minutes)) minutes"
	sleep 2
	echo "hope you have a good time"
else
	sleep 1
	echo "CONGATULATION!!! YOU ARE JUST BORN!!!"
	sleep 2
	echo "Welcome abroad '$name'"
fi
sleep 2
