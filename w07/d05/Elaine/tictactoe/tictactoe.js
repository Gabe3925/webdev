function Square(name) {
  this.name = name;
}

Square.prototype = {
  symbol: ""
};

var $squares = $('.square');
var $sq1 = $squares.eq(0);
var $sq2 = $squares.eq(1);
var $sq3 = $squares.eq(2);
var $sq4 = $squares.eq(3);
var $sq5 = $squares.eq(4);
var $sq6 = $squares.eq(5);
var $sq7 = $squares.eq(6);
var $sq8 = $squares.eq(7);
var $sq9 = $squares.eq(8);

var square1 = new Square("s1");
var square2 = new Square("s2");
var square3 = new Square("s3");
var square4 = new Square("s4");
var square5 = new Square("s5");
var square6 = new Square("s6");
var square7 = new Square("s7");
var square8 = new Square("s8");
var square9 = new Square("s9");

var move = 0;
var emptySpaces = 9;

$squares.on("click", function() {
  if (move % 2 === 0){
    $(this).value = "X";
  } else {
    $(this).value = "O";
  };
  move++;
});

function makeMove(square) {
  if (move % 2 === 0){
    square.symbol = "X";
  } else {
    square.symbol = "O";
  };
  move++;
  emptySpaces--;
  check();
};

function check() {
  if (square1.symbol === square2.symbol && square2.symbol === square3.symbol && square1.symbol !== "") {
    alert(square1.symbol + " Wins!");
    reset();
  } else if (square4.symbol === square5.symbol && square5.symbol === square6.symbol && square4.symbol !== "") {
    alert(square4.symbol + " Wins!");
    reset();
  } else if (square7.symbol === square8.symbol && square8.symbol === square9.symbol && square7.symbol !== "") {
    alert(square7.symbol + " Wins!");
    reset();
  } else if (square1.symbol === square5.symbol && square5.symbol === square9.symbol && square1.symbol !== "") {
    alert(square1.symbol + " Wins!");
    reset();
  } else if (square3.symbol === square5.symbol && square5.symbol === square7.symbol && square3.symbol !== "") {
    alert(square3.symbol + " Wins!");
    reset();
  } else if (emptySpaces <= 0) {
    alert("It's a tie.");
    reset();
  }
};

function reset() {
  square1.symbol = "";
  square2.symbol = "";
  square3.symbol = "";
  square4.symbol = "";
  square5.symbol = "";
  square6.symbol = "";
  square7.symbol = "";
  square8.symbol = "";
  square9.symbol = "";
};
