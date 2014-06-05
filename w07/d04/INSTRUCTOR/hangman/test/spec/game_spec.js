describe("Hangman", function() {
  var game;

  beforeEach(function() {
    game = new Hangman();
  });


  describe("selectRandomWord", function() {

    it("should return the first word when random is 0.", function() {
      var stub = sinon.stub(Math, 'random').returns(0);
      expect(game.selectRandomWord()).toBe(game.words[0]);
      stub.restore();
    });

    it("should return the last word when random is 1.", function() {
      var stub = sinon.stub(Math, 'random').returns(1);
      expect(game.selectRandomWord()).toBe(game.words[game.words.length-1]);
      stub.restore();
    });

  });

  describe("hasGuess", function() {
    beforeEach(function() {
      game.guesses = ['Z'];
    });

    it("should return true when the game has the guessed letter.", function() {
      expect(game.hasGuess('Z')).toBe(true);
    });

    it("should return false if the game does not yet have the guessed letter.", function() {
      expect(game.hasGuess('X')).toBe(false);
    });
  });

  describe("reset", function() {

    it("should select a new random word for the game.", function() {
      var stub = sinon.stub(game, 'selectRandomWord').returns('inhak');
      game.reset();
      expect(game.word).toBe('inhak');
      stub.restore();
    });

    it("should reset the guesses array.", function() {
      game.guesses = ['X'];
      game.reset();
      expect(game.guesses.length).toBe(0);
    });
  });
});