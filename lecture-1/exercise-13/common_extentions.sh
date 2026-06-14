#!/bin/bash

find ~ -type f -name "*.*" -printf '%f\n' | sed 's/^.*\.//' | sort | uniq -c | sort -n -r | head -5 > output.txt
