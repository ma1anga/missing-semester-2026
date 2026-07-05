#!/bin/bash

buggy_script_path="$1"

stdout_path="stdout.txt"
stderr_path="stderr.txt"

runs_count=0
return_code=0

echo "Cleaning up files from the previous executions"
rm "$stdout_path" &> /dev/null
rm "$stderr_path" &> /dev/null

while [[ $return_code -lt 1 ]]; do
  $buggy_script_path 1>> "$stdout_path" 2>> "$stderr_path"
  return_code="$?"
  runs_count=$((runs_count + 1))
done

echo "Bug was found! Stopping the execution"

echo "stdout is.."
cat "$stdout_path"

echo "stderr is.."
cat "$stderr_path"

echo "Reproducing took $runs_count runs"
