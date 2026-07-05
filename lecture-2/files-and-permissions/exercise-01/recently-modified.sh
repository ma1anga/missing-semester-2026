#!/bin/bash

find ~/Developer/missing-semester-2026-exercises -type f -printf '%T@ %p\n' | sort -nr | head -5
