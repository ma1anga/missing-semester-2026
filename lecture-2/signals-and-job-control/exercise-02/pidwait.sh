#!/bin/bash

pidwait() {
  pid_to_wait="$1"

  kill_result_code=0
  while [[ $kill_result_code -eq 0 ]]; do
    kill -0 "$pid_to_wait" &> /dev/null
    kill_result_code=$?

    sleep 1
  done

  echo "Process $pid_to_wait completed!"
}
