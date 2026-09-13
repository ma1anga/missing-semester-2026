#!/bin/bash

git filter-repo --invert-paths --path credentials.txt --sensitive-data-removal --force
