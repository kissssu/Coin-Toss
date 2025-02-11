# Coin Flipper Script

This is a simple Bash script that simulates a coin flip. The user can choose heads or tails, and the script will randomly determine the outcome of the flip.  The script allows for multiple flips and prompts the user to play again after each round.

## How to Install/Run

1.  **Save the script:** Save the script to a file named `coin-flipper.sh` (or any name you prefer with the `.sh` extension).

2.  **Make it executable:** Give the script execute permissions:

    ```bash
    chmod +x coin-flipper.sh
    ```

3.  **Run the script:** Execute the script from your terminal:

    ```bash
    ./coin-flipper.sh
    ```

## Sample Output

```
Choose heads (h) or tails (t) [default: heads]: 

The coin landed on: HEADS
You win!
--------------------
Toss again? (y/n or press Enter to exit): 
Thanks for playing!
```

## Usage

When you run the script, you'll be prompted to choose heads (h) or tails (t).  If you press Enter without typing anything, the default choice (heads) will be used. The script will then simulate a coin flip and display the result. You'll be asked if you want to toss again. Entering 'y' will continue the game.  Any other input or pressing Enter will exit the script.

## Contribution

Contributions are welcome! If you have any suggestions for improvements or bug fixes, please open an issue or submit a pull request.  Please ensure your code adheres to standard Bash scripting practices.

## Future Enhancements

Here are some ideas for future enhancements:

*   **Score Tracking:** Keep track of the user's wins and losses.
*   **Betting System:** Allow the user to "bet" (even imaginary points) on each flip.
*   **Advanced Animation:**  Explore using `tput` or other terminal control methods to create a more visually appealing animation.
*   **Different Coin Types:**  Allow the user to choose between different coins (e.g., penny, nickel, dime).
*   **Saving/Loading Scores:** Implement a way to save and load user scores.