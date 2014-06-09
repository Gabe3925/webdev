function TicTacToe() {
  this.board = {};
  this.xMove = true; // is it X's move?
  this.activeGame = true;
}

TicTacToe.prototype = {
  placeMarker: function( xCoord, yCoord ) {
    // return early if the game is over
    if ( !this.activeGame ) return;

    var coordinates = [xCoord, yCoord];
    var position = coordinates.join(",");

    var withinGrid = true;
    for ( var i = 0; i < coordinates.length; i++ ) {
      var coordinate = coordinates[i];
      if ( coordinate >= 3 || coordinate < 0 ) {
        withinGrid = false;
        break;
      }
    }

    // only add markers if it's within the grid and there is no marker there already
    if ( !this.board[position] && withinGrid ) {
      this.board[position] = this.xMove ? "X" : "O";
      this.xMove = !this.xMove;  // switch markers after every move;
    }
  },
  updateGame: function() {
    // check for horizontal or vertical win conditions
    var winConditions = ["horizontal", "vertical"];

    for ( var i = 0; i < winConditions.length; i++ ) {
      // determine search type
      var isHorizontalSearch = winConditions[i] == "horizontal";

      for ( var j = 0; j < 3; j++ ) {
        var markerType = "";  // reset marker for each search

        for ( var k = 0; k < 3; k ++ ) {
          var row = isHorizontalSearch ? j : k;
          var col = isHorizontalSearch ? k : j;

          var position = [row, col].join(",");
          markerType = markerType || this.board[position];

          // end search prematurely if there are no markers or markers do not match
          if ( !markerType || this.board[position] !== markerType ) break;

          // if there are 3 markers of the same type in a row, end the game
          if ( k === 2 ) {
            this.activeGame = false;
            return this.activeGame;
          }
        }
      }
    }

    // conduct a diagonal search
    var diagonalConditions = ["down-right", "up-right"];

    for ( var i = 0; i < diagonalConditions.length; i++ ) {

      // set diagonal search type, downright (0,0; 1,1; 2,2) or upright (0,2; 1,1; 2,0)
      var isDownRightSearch = diagonalConditions[i] == "down-right";
      var markerType = ""; // reset markerType for each search type

      for ( var j = 0; j < 3; j++ ) {
        var position = isDownRightSearch ? [j, j].join(",") : [2 - j, j].join(",");
        markerType = markerType || this.board[position];

        if ( !markerType || this.board[position] !== markerType ) break;

        if ( j === 2 ) {
          this.activeGame = false;
          return this.activeGame;
        }
      }

    }

    return this.activeGame;
  }
};