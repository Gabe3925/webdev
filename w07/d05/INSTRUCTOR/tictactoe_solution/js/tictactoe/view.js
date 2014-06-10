
var game = new Game();

document.querySelector('ul').addEventListener('click', function(e){
  // here we
  for(var i = 0; i < e.target.parentElement.children.length; i++) {
    if(e.target === e.target.parentElement.children[i]) {
      // make the mark with whatever turn it currently is.
      debugger
      game.mark(game.turn, { row: parseInt(i/3), column: i%3 });
      render();
    };
  };
});

function render() {
  var board = document.querySelector("ul.board");

  board.innerHTML = "";

  for (var i = 0; i < 9; i++) {
    var li = document.createElement("li");
    li.className = game.board[parseInt(i/3)][i%3];
    board.appendChild(li);
  };

  if(game.checkWinner() !== undefined) {
    var winners = document.querySelectorAll("."+ game.checkWinner());
    for(i = 0; i < winners.length; i++){
      // this adds a flashy animation to the winning board pieces
      winners[i].classList.add("winning");
    };
  };

};

render();
