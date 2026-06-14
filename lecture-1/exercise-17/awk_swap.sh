#!/bin/bash

printf 'a 50 x\nb 150 y\nc 200 z\n' | awk '$2 > 100 {val1=$1; $1=$3; $3=val1; print}' > output.txt
