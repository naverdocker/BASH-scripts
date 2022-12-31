#!/bin/bash
echo "Please enter your Name"
read name


#Input for birth year
echo "Enter your birth year (yyyy)"
read yyyy

if [ ${#yyyy} -ne 4 ] || ! [[ "$yyyy" =~ ^[0-9]+$ ]]
then
	echo "INPUT ERROR: only FOUR digit integers are allowed"
	exit
fi


#Input for birth month
echo "Enter your month of birth (mm)"
read mm

if [ ${#mm} -ne 2 ] || ! [[ "$mm" =~ ^[0-9]+$ ]] || [ $mm -eq 0 ]
then
	echo "INPUT ERROR: only TWO digit integers greater than zero are allowed"
	exit
fi
if [ $mm -gt 12 ]
then
	echo "INPUT ERROR: month value cannot be above 12"
	exit
fi


#Input for day of month born on
echo "Enter the day of month you were born (dd)"
read dd

if [ ${#dd} -ne 2 ] || ! [[ "$dd" =~ ^[0-9]+$ ]] || [ $dd -eq 0 ]
then
	echo "INPUT ERROR: only TWO digit integers greater than zero are allowed"
	exit
fi

month30="04 06 09 11"
month31="01 03 05 07 08 10 12"

for item in $month30
do
	if [ $mm == $item ]
	then
		if [ $dd -ge 30 ]
		then
			echo "INPUT ERROR: day value cannot be more than 30 for month $mm"
			exit
		fi
	fi
done

for item in $month31
do
	if [ $mm == $item ]
	then
		if [ $dd -ge 31 ]
		then
			echo "INPUT ERROR: day value cannot be more than 31 for month $mm"
			exit
		fi
	fi
done

if [ $mm == 02 ]
then
	if [ $dd -ge 29 ]
	then
		echo "INPUT ERROR: day value cannot be more than 29 for month $mm"
		exit
	fi
fi


#Input for hour of birth
echo "Enter the hour in which you were born (HH)"
read HH
if [ ${#HH} -ne 2 ] || ! [[ "$HH" =~ ^[0-9]+$ ]]
then
	echo "INPUT ERROR: only TWO digit integers are allowed"
	exit
fi

if [ $HH -ge 23 ]
then
	echo "Input Error: hour value cannot be more than 23"
	exit
fi


#Input for minute of birth
echo "Enter the minute of the hour you were born (MM)"
read MM

if [ ${#MM} -ne 2 ] || ! [[ "$MM" =~ ^[0-9]+$ ]]
then
	echo "INPUT ERROR: only TWO digit integers are allowed"
	exit
fi

if [ $MM -ge 59 ]
then
	echo "INPUT ERROR: minute value cannot be more than 59"
	exit
fi	

#calculations
sec_dob=$(date --date "${yyyy}$mm$dd $HH$MM" +%s)
sec_now=$(date +%s)
sleep 1

if [ $sec_dob -ge 0 ]
then
	age_seconds=$(($sec_now-$sec_dob))
else
	age_seconds=$(($sec_now+$sec_dob))
fi

age_minutes=$(($age_seconds/60))
age_hours=$(($age_minutes/60))
age_days=$(($age_hours/24))
age_years=$(($age_days/365))

echo " "
sleep 1
echo "Hi, $name"
sleep 1
echo " "

if [  $age_seconds -gt 60  ]
then
        sleep 1
	echo "you are $age_seconds seconds old"
	echo " "
       	sleep 1
	echo "your age in minutes: $age_minutes"
	echo " "
	sleep 1
	echo "your age in hours: $age_hours"
	echo " "
	sleep 1
	echo "your age in days: $age_days"
	echo " "
	sleep 1
	echo "your age in years: $age_years"
	echo " "
elif [  $age_seconds -lt 0  ]
then
        sleep 1
	echo "You are not born yet!!!"
	echo " "
	sleep 1
	echo "you will be born in $((0-$age_seconds)) seconds"
	echo " "
	sleep 1
	echo "please wait for another $((0-$age_minutes)) minutes"
	echo " "
	sleep 1
	echo "which is $((0-$age_hours)) hours OR $((0-$age_days)) days OR $((0-$age_years)) years"
	echo " "
	sleep 1
	echo "hope you have a good time"
	echo " "
else
	sleep 1
	echo "CONGATULATION!!! YOU ARE JUST BORN!!!"
	echo " "
	sleep 1
	echo "Welcome abroad '$name'"
	echo " "
fi
sleep 1
