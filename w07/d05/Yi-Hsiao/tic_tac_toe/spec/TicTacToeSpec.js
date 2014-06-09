describe( "TicTacToe", function() {
  var game;
  beforeEach(function() {
    game = new TicTacToe();
  });
  
  describe( "new instance", function() {
    it( "should have an empty board", function() {
      expect( game.board ).toEqual( {} );
    });
  });

  describe( "placeMarker", function() {
    it( "should place an 'X' marker in the specified coordinate, if the board is empty", function() {
      game.placeMarker( 0, 1 );
      expect( game.board["0,1"] ).toBe( "X" );
    });

    it( "should place an 'O' marker in the specified cordinate, after X has played", function() {
      game.placeMarker( 0, 1 );
      game.placeMarker( 1, 1 );
      expect( game.board["1,1"] ).toBe( "O" );
    });

    it( "should do nothing if there's a marker in the specified coordinate", function() {
      game.placeMarker( 0, 1 );
      game.placeMarker( 0, 1 );
      expect( game.board["0,1"] ).toBe( "X" );
    });

    it( "should do nothing if it's outside the 3x3 bounds", function() {
      game.placeMarker( 3, 3 );
      expect( game.board["3,3"] ).toBe( undefined );
    });

    it( "should do nothing if it's outside the 3x3 bounds", function() {
      game.placeMarker( -1, -1 );
      expect( game.board["-1,-1"] ).toBe( undefined );
    });

    it( "should do nothing if the game is over", function() {
      game.activeGame = false;
      game.placeMarker(0, 1);
      expect( game.board["0,1"] ).toBe( undefined );
    });
  });

  describe( "updateGame", function() {
    it( "should set 'activeGame' to true for a new game", function() {
      game.updateGame();
      expect( game.activeGame ).toBe( true );
    });

    it( "should set 'activeGame' to false, if there's three markers of the same type vertically", function() {
      game.board["2,0"] = "X";
      game.board["2,1"] = "X";
      game.board["2,2"] = "X";
      game.updateGame();
      expect( game.activeGame ).toBe( false );
    });

    it( "should set 'activeGame' to false, if there's three markers of the same type horizontally", function() {
      game.board["0,2"] = "O";
      game.board["1,2"] = "O";
      game.board["2,2"] = "O";
      game.updateGame()
      expect( game.activeGame ).toBe( false );
    });

    it( "should set 'activeGame' to true if there are three markers in a line, but of different types", function() {
      game.placeMarker(2, 0);
      game.placeMarker(2, 1);
      game.placeMarker(2, 2);
      game.updateGame();
      expect( game.activeGame ).toBe( true );
    });

    it( "should set 'activeGame' to false if there are three markers in a diagonal line", function() {
      game.board["0,0"] = "O";
      game.board["1,1"] = "O";
      game.board["2,2"] = "O";
      game.updateGame();
      expect( game.activeGame ).toBe( false );
    });

    it( "should set 'activeGame' to false if there are three markers in a diagonal line", function() {
      game.board["0,2"] = "X";
      game.board["1,1"] = "X";
      game.board["2,0"] = "X";
      game.updateGame();
      expect( game.activeGame ).toBe( false );
    });
  });
});