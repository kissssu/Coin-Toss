#!/bin/bash

coin_flip() {
  random_number=$(( $RANDOM % 2 ))
  if [[ $random_number -eq 0 ]]; then
    echo "heads"
  else
    echo "tails"
  fi
}

echo "Flipping..."
sleep 1

result=$(coin_flip)
echo -e "The coin landed on: ${result^^}"
