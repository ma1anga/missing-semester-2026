#!/bin/bash

curl -s https://missing.csail.mit.edu | grep "1/.*/26" | wc -l > output.txt
