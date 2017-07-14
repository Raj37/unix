#!/bin/bash
#PATH="/home/cloudera/Desktop/unix"
now="$(date)"
printf "Current date and time %s\n" "$now"
 
now="$(date +'%d/%m/%Y')"
printf "Current date in dd/mm/yyyy format %s\n" "$now"
 
echo "Starting backup at $now, please wait..."
# command to backup scripts goes here
# ...

exec >> /home/cloudera/Desktop/unix/script.log.$(date +%d) 2>&1

#running sqoop script for import data from mysql server to hdfs

echo "This script is about to run sqoop job script."

(exec /home/cloudera/Desktop/unix/sqoop.sh) > /home/cloudera/Desktop/unix/sqoop_job.log 2>&1
RF=$?
#echo $RF
if [ $RF -eq 0 ]; then
	echo "sqoop job ran successfully..."
else
	echo "sqoop job failed"
fi
