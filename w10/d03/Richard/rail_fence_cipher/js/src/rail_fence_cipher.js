var encode = function(word) {
  var line = 1;
  var thisWord = [];
  switch ( line <= 3)
  {
    case line === 1:
    for( var i = 0; i < word.length; i += 4){
      var letter = word[i];
      thisWord.push(letter);
      line++;
    }
    case line === 2:
    for( var i = 1; i < word.length; i += 2){
      var letter = word[i];
      thisWord.push(letter);
      line++;
    }
    case line === 2:
    for( var i = 2; i < word.length; i += 4){
      var letter = word[i];
      thisWord.push(letter);
      line++;
    }
    return thisWord.join('');
  }
};
