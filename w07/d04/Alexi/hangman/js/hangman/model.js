function Hangman() {
  this.reset();
}

Hangman.prototype = {
  words: ['ruby', 'rails', 'javascript', 'array', 'hash', 'sinatra', 'model', 'controller', 'view', 'authentication', 'capybara', 'jasmine', 'sublime', 'terminal', 'system', 'backbone', 'function', 'prototype', 'documentation', 'development', 'data', 'closure', 'inheritance', 'scope', 'github', 'agile', 'route', 'context', 'deployment', 'database'],
  word: '',
  wordDisplay: '',
  chances: 0,
  guesses: [],
  active: true,
  victory: false,

  // Select a new random word, 
  reset: function() {
    this.word = this.selectRandomWord();
    this.wordDisplay = '';
    this.active = true;
    this.chances = 8;
    this.guesses = [];
    this.update();
  },

  selectRandomWord: function() {
    var index = Math.round((this.words.length - 1) * Math.random()); 
    return this.words[index];
  },

  // Check to see if this letter exists within the 'guesses' array:
  hasGuess: function(letter) {
    return this.guesses.indexOf(letter) >= 0;
  },

  hasWordLetter: function(letter) {
    return this.word.indexOf(letter) >= 0;
  },

  guess: function(letter) {
    if (!this.active) return;

    if (letter.length > 1) {
      throw "this is invalid input,";
    }

    if(!this.hasGuess(letter)) {
    this.guesses.push(letter);
      
      if (!this.hasWordLetter(letter)) {
        this.chances--;
      }
     this.update(); 
    }
  },
  
  update: function() {
    var display = '';

    for (var i = 0; i < this.word.length; i++) {
      // do we have this letter?    
      // if so, display it.
      // otherwise, fill it with an "_"
      var letter = this.word[i];
      var hasGuess = this.hasGuess(letter);
      display += hasGuess ? letter : '_';

      if (!hasGuess) {
        letterMissing += 1;
      }
    }
  this.victory = (!lettersMissing === 0);
  this.active = (!lettersMissing === 0);
  // If this game is active...
  this.wordDisplay = this.active ? display : this.word;
  }
};
