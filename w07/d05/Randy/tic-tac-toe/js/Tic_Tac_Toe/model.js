// I have written and deleted I don't know how many times.
// I do not understand how to write a game in only the model using no HTML when JavaScript
// relies on HTML elements to function. I was just so completely lost on this homework.


// What I know I'd need


// A way to reset the game to base settings
function Game(){
  this.reset();
}

// Game prototype stuff
Game.prototype = {
  // A 3-row game board of 3 values per row
  board = [[0, 1, 2],[3, 4, 5],[6, 7, 8]],
  // Victory conditions
  winningCombos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
  // An array for X choices
  xPicks = [],
  // An array for O choices
  oPicks = [],
  // If the game is active (like the hangman example)
  gameActive: true,
  // If victory has been acheived (game over)
  victory: false,
  // A way of determining player turn (X starts)
  xTurn = true,
  // The number of turns remaining
  turnsLeft: 0,

  //the reset function (Likein hangman)
  reset: function() {
  },

  // A function to check victory conditions
  checkVictory: function(playerChoicesArray) {
    // Need to check 8 victory possibilites
    // See if users array contains any of the victory condition arrays
  },

  availablePick: function(){
  // Need a way to check if the users choice has been picked already
  // I read about possibly using the .one method to only allow a button to be click once
  // and then be unavailable after that.
    // But I never really got to the point of making that happen
      // Also could use if statement to go through xPicks or oPicks to see if they had guessed that already
  },

  // Some function to save the user guess to that users array
    // Following is edited from Hangman
  userGuess: function(button) {

    // If the game is over, then don't run the rest of this function.
    if (!this.active) return;

    // If the button has not yet been picked...
    if (!this.availablePick(button)) {

      if (xTurn){
    // Let's add the letter into the guesses array.
      this.xPicks.push(button.value);
    } else
      this.oPicks.push(button.value);

    // Call update to reasses the game state.
    this.update();
    }
  },
}


// I am really looking forward to hopefully going over this in class.
// I do not like not having a clue how to go about things.
