function Hangman() {
  this.reset();
}

Hangman.prototype = {
  words: ['ruby', 'rails', 'javascript', 'array', 'hash', 'sinatra', 'model', 'controller', 'view', 'authentication', 'capybara', 'jasmine', 'sublime', 'terminal', 'system', 'backbone', 'function', 'prototype', 'documentation', 'development', 'data', 'closure', 'inheritance', 'scope', 'github', 'agile', 'route', 'context', 'deployment', 'database'],
  word: "",
  wordDisplay: "",
  chances: 0,
  guesses: [],
  active: true,
  victory: false,

  // Select a new random word and reset game state.
  reset: function() {
    this.word = this.selectRandomWord();
    this.active = true;
    this.guesses = [];
    this.chances = 8;
    this.wordDisplay = "";
  },

  selectRandomWord: function() {
    var index = Math.round((this.words.length - 1) * Math.random());
    return this.words[index];
  },

  // Check to see if this letter exists within the guesses array:
  hasGuess: function(letter) {
    return this.guesses.indexOf(letter) >= 0;
  },

  // Check to see if this letter exists within the current word:
  hasWordLetter: function(letter) {
    return this.word.indexOf(letter) >= 0;
  },

  //
  guess: function(letter) {
    if(!this.active) return;

    if(letter.length > 1) {
      throw "this is an invalid input.";
    }

    if(!this.hasGuess(letter)) {
      this.guesses.push(letter);

      if(!this.hasWordLetter(letter)) {
        this.chances--;
      }
    }
  }
};
