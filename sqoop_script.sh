#!/bin/bash
MY_MESSAGE="Hello World"
echo $MY_MESSAGE

DB_NAME="test"
TBL_NAME="emp"
HDFS_PATH="'/user/raj/sqoop_mysql_data'"
NUM_MAPPER="1"

USER_NAME="roor"
PASSWORD="cloudera"

sqoop import --connect jdbc:mysql://localhost/${DB_NAME} --username ${USER_NAME} --password ${PASSWORD} --target-dir ${HDFS_PATH} --table ${TBL_NAME} --m ${NUM_MAPPER}


