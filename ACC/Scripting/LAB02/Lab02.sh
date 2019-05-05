#! /bin/bash

# 2. TIMECLOCK MANAGEMENT
#   Write a script using a Linux shell programming language to perform clock management for a small daycare
#   The program should manage all time in and time out routines.
#   At the end of the each day should give the Total hours worked that day
#   Example
#   	Time-In 	6:30am
#   	Lunch-Out	11:25am
#   	Lunch-In	11:40pm
#   	Time-Out	5:30pm

#   	Total Hours Worked =

# <- My code starts here ->

#  Function to promt the user for time returns hours and minutes in military format
getTime(){
    
    case $1 in
        "clockIn")
            message="Enter clock-in time: (H:M am/pm) "
        ;;
        "clockOut")
            message="Enter clock-out time: (H:M am/pm) "
        ;;
        "lunchOut")
            message="Enter lunch clock-out time: (H:M am/pm) "
        ;;
        "lunchIn")
            message="Enter lunch clock-in time: (H:M am/pm) "
        ;;
    esac
    
    read -p "${message}" TIME MERIDIEM
    
    HOURS="$(cut -d':' -f1 <<< "$TIME")"
    MINUTES="$(cut -d':' -f2 <<< "$TIME")"
    
    if [[ ($MERIDIEM = "pm" && "$HOURS" -lt "12")]]
    then
        ((HOURS=$HOURS+12))
    fi
    echo $HOURS $MINUTES
}
#  Function that calculates the time diference, arguments are hours minutes hours minutes, returns hours minutes
getTimeDifference(){
    ((HOURS=$3-$1))
    ((MINUTES=$4-$2))
    if [ "$MINUTES" -lt "0" ]
    then
        ((HOURS=$HOURS-1))
        ((MINUTES=$MINUTES+60))
    fi
    echo $HOURS $MINUTES
}

# Function that adds time arguments are hours minutes hours minutes
getTimeSum(){
    ((HOURS=$1+$3))
    ((MINUTES=$2+$4))
    if [ "$MINUTES" -gt "59" ]
    then
        ((HOURS=$HOURS+1))
        ((MINUTES=$MINUTES-60))
    fi
    echo "Time Worked = $HOURS Hours and $MINUTES minutes"
}

# Get clock in time
read -r hoursClockIn minutesClockIn <<< $(getTime "clockIn")
# Get lunch out time
read -r lunchHoursClockOut lunchMinutesClockOut <<< $(getTime "lunchOut")
# Get lunch in time
read -r lunchHoursClockIn lunchMinutesClockIn <<< $(getTime "lunchIn")
# Get clock out time
read -r hoursClockOut minutesClockOut <<< $(getTime "clockOut")
# Calculate time worked before lunch
read hoursMorning minutesMorning <<< $(getTimeDifference hoursClockIn minutesClockIn lunchHoursClockOut lunchMinutesClockOut)
# Calculate time worked after lunch
read hoursAfternoon minutesAfternoon <<< $(getTimeDifference lunchHoursClockIn lunchMinutesClockIn hoursClockOut minutesClockOut)
# Calculate total time worked and display to the user
echo $(getTimeSum hoursMorning minutesMorning hoursAfternoon minutesAfternoon)
