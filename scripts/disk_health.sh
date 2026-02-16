#!/bin/bash
 DRIVE="/dev/sda"
 THRESHOLD=90
 NTFY_TOPIC="mirage_updates"

 USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//g')
 HEALTH=$(sudo smartctl -H $DRIVE | grep "overall-health" | awk '{print $NF}')

 if [ "$USAGE" -gt "$THRESHOLD" ]; then
     MESSAGE="⚠️Storage Alert: Disk usage is at ${USAGE}%!"
     curl -d "$MESSAGE" ntfy.sh/$NTFY_TOPIC
 else
	 MESSAGE="Daily Check: Disk usage is at ${USAGE}"
	 curl -d "$MESSAGE" ntfy.sh/$NTFY_TOPIC
 fi

 if [ "$HEALTH" != "PASSED" ]; then
     MESSAGE="URGENT: Disk $DRIVE status is $HEALTH. Failure imminent!"
     curl -d "$MESSAGE" ntfy.sh/$NTFY_TOPIC
 fi
