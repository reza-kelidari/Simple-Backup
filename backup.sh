#!/bin/bash

# Base Checks

## Checking arguments
if [ $# -lt 1 ] || [ $# -gt 2 ]
then
        echo 0x001, Argument error, \-h for help
        exit 1
fi

## Showing help
if [ $1 = "-h" ];
then
        echo
	echo Simple Backup v0.1
	echo Copyright 2024 Reza Kelidari
	echo
	echo Usage\: my.sh [\-h\|\-t] \| Directory 
	echo
	echo Options:
	echo \-h : Shows this help
	echo \-t : Add current time to end of Backup file name
	echo
	echo Errors:
	echo 0x001: Script need at least 1 argument, and it\'s
	echo your target directory
	echo 0x002: Directory not exists
	echo 0x003: Provided directory is empty
	echo
        exit 0
fi



# Basic Variables
## Check does it have currect option
if [ $# = 1 ] && [ $1 = "-t" ]
then
	echo 0x001, Argument error, \-h for help
	exit 1
fi

## Check does it have any option
if [ $# = 1 ]
then
	DIR=$1
	TIME=0
else
	DIR=$2
	TIME=1
fi



# Checking provided directory

## Checking does directory exists
if [ ! -d $DIR ]
then
	echo 0x002, Directory error, \-h for help
	exit 2
fi

## Checking does directory have contents
if [ `find $DIR -mindepth 1 -maxdepth 1 | wc -l` -eq 0 ]
then
	echo 0x003, Directory error, \-h for help
	exit 3
fi