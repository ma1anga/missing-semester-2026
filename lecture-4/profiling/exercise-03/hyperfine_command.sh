#!/bin/bash

hyperfine --warmup 3 'fd --glob "*.c" ~' 'find ~ -name "*.c"'
