function ticTacToe() {
  this.reset();
}

ticTacToe.prototype = {
  x: [],
  y: [],
  active: true,
  victory: false,
  xTurn: true,

  // Resets the game state and gives fresh value to all state attribrutes.
  reset: function() {
    this.x = [],
    this.y = [],
    this.active = true,
    this.victory = false;
    this.xTurn = true
    // TODO: this.update();

  },
  // Places an X or O on the board
  turn: function() {

    // If the game is over, don't run the rest of this function
    if (!this.active) return;

    // If it's X's turn...
    if (this.xTurn) {
      this.x.push("X");
    } else {
      this.y.push("Y");
    }

    this.xTurn = !this.xTurn;

    // TODO this.update();

  }
}


