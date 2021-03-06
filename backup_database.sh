#!/bin/bash

# Database credentials
user="laplacios2018"
password=""
host=""
db_name="COPA_AMERICA_2019"

# Other options
date=$(date +"%Y-%m-%d_%H_%M_%S")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --host=$host $db_name > backups/$db_name-$date-back.sql
