#!/bin/bash

default_choice="h" # Default choice (heads)

# Function to perform a single coin flip
coin_flip() {
  random_number=$(( $RANDOM % 2 )) # Generate 0 or 1
  if [[ $random_number -eq 0 ]]; then
    echo "heads"
  else
    echo "tails"
  fi
}

# Main game loop
while true; do
  read -p "Choose heads (h) or tails (t) [default: heads]: " choice   # Get user choice (or default)
  if [[ -z "$choice" ]]; then
    choice="$default_choice"
  fi
  choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]') # Case-insensitive input

  # Validate user input
  if [[ "$choice" != "h" && "$choice" != "t" ]]; then
    echo "Invalid input. Please enter 'h' or 't'."
    continue # Skip to the next iteration of the loop
  fi

  # Perform coin flip
  result=$(coin_flip)

  # Display result
  echo -e "\nThe coin landed on: ${result^^}" # ${result^^} converts to uppercase

  # Determine and display outcome
  if [[ "$choice" == "h" && "$result" == "heads" ]] || [[ "$choice" == "t" && "$result" == "tails" ]]; then
    echo "You win!"
  else
    echo "You lose!"
  fi
  echo "--------------------" # Separator between flips

  # Ask if the user wants to play again
  read -p "Toss again? (y/n or press Enter to exit): " play_again
  play_again=$(echo "$play_again" | tr '[:upper:]' '[:lower:]')

  # Exit the loop if the user doesn't want to play again or presses Enter
  if [[ "$play_again" != "y" ]]; then
    break
  fi
done

echo "Thanks for playing!"