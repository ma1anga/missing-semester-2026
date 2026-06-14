#!/bin/bash

find ~/Developer/missing-semester-2026-exercises -type f -name "*.sh" | xargs wc -l > output.txt
