#!/bin/bash

marco() {
  MARCO_DIR="$(pwd)"
  export MARCO_DIR
}

polo() {
  if [[ -n "$MARCO_DIR" ]]; then
    echo "$MARCO_DIR"
  else
    echo "Nothing to show! Please run 'marco' command first" >&2
    return 1
  fi  
}