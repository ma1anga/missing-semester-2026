#!/bin/bash

FILE_NAME=$1

if [ -f "$FILE_NAME" ]; then
       	echo "File with name '$FILE_NAME' exists!'"; 
else
	echo "File with name '$FILE_NAME' does not exist :("
fi
