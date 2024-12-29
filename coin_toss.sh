#!/bin/bash

echo "Choose heads or tails (h/t):"
read choice

# Generate a random number between 0 and 1
random_number=$(($(shuf -i 0-1 -n 1)))

if [[ $random_number -eq 0 ]]; then
  result="heads"
else
  result="tails"
fi

echo "The coin landed on: $result"

if [[ $choice == "h" && $result == "heads" ]] || [[ $choice == "t" && $result == "tails" ]]; then
  echo "You win!"
else
  echo "You lose!"
fi
