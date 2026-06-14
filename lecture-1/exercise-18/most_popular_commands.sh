#!/bin/bash

cat ~/.histfile | awk '{print $1}' | sort | uniq -c | sort -nr | head -n5 > output.txt
