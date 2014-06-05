describe("Hangman", function() {
  var game;

  beforeEach(function() {
    game = new Hangman();
  });

  describe("selectRandomWord", function() {
    it("should return the first word when random is 0", function(){
      var stub = sinon.stub(Math, 'random').returns(0);
      expect(game.selectRandomWord()).toBe(game.words[0]);
      stub.restore();
    });

    it("will return the last word when random is 1.", function() {
      var stub = sinon.stub(Math, 'random').returns(1);
      expect(game.selectRandomWord()).toBe(game.words[game.words.length - 1]);
      stub.restore();
    });
  });
});

