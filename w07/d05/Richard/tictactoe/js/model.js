/*
* @Author: Richard Hessler
* @Date:   2014-06-07 13:55:32
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-06-09 09:42:55
*/

//Global Variables
var player = 1;             // starting player
var winningCombos = [       // all possible winning combinations
  ["btn1","btn2","btn3"],
  ["btn4","btn5","btn6"],
  ["btn7","btn8","btn9"],
  ["btn1","btn4","btn7"],
  ["btn2","btn5","btn8"],
  ["btn3","btn6","btn9"],
  ["btn1","btn5","btn9"],
  ["btn3","btn5","btn7"]
];
var boxesClicked = 0;       // total number of boxes clicked (max 9)
var winner;                 //Variable for broken function.

// main function which affects buttons clicked
function clickBtn(btn) {
  var docVar = document.getElementById(btn)

  // begins with player = 1
  if(player === 1){
    docVar.value = 'X';              // assigns value of "X" to first and every other block clicked
    docVar.disabled = 'disabled';   // adds disabled to input button (block) element
    player -=1;                     //increments player value to 0 - to be O's turn next
    boxesClicked +=1;               // increments boxes clicked
    docVar.classList.add("red");
    checkForWinner();               // update state of game


  } else {
    docVar.value = 'O';             // assigns value of "O" to first and every other block clicked
    docVar.disabled = 'disabled';  // adds disabled to input button (block) element
    player += 1;                    //deccrements player value to 0 - to be O's turn next
    boxesClicked += 1;              // increments boxes clicked
    docVar.classList.add("red");
    checkForWinner();               // update state of game
  }

}

// update function assessing status of game state
function checkForWinner(){

  // TODO: DRY this up.
  // loops through values of buttons and assesses whether or not a winning combination has been satisfied.
  for(var i = 0; i < winningCombos.length; i++){
    if(document.getElementById([winningCombos[i][0]]).value === 'X' && document.getElementById([winningCombos[i][1]]).value === 'X' && document.getElementById([winningCombos[i][2]]).value === 'X'){

      // winner = 'X wins!'                 // variable for broken function below
      console.log("X WON! Rematch!")        // testing output
      alert("X WON! Rematch!");             // user facing output
      reset();                              // resets game to new game status

      // loops through values of buttons and assesses whether or not a winning combination has been satisfied.
  } else if (document.getElementById([winningCombos[i][0]]).value === 'O' && document.getElementById([winningCombos[i][1]]).value === 'O' && document.getElementById([winningCombos[i][2]]).value === 'O'){

      // winner = 'O wins!'                 // variable for broken function below
      alert("O WON! Rematch!")              // user facing output
      console.log("O WON! Rematch!")        // testing output
      reset();                              // resets game to new game status

  } else if (boxesClicked === 9){           // catchall/prevents game from ending before all 9 boxes are clicked
      // winner = "Scratch Game!"             // variable for broken function below
      alert("Scratch Game - Rematch")         // user facing output
      console.log("Scratch Game - Rematch")   // testing output
      reset();                                // resets game to new game status
    }
  }
}

// resets game attributes to new
function reset() {

  player = 1;                                         // reseting player value to 1
  boxesClicked = 0;                                   // reseting boxesClicked value to 0
  for (var i=1; i<=9; i++){
    var docVar = document.getElementById('btn'+i);
    docVar.value = '';                                //looping through and assigning all values to ''
    docVar.disabled = '';                             //looping through and assigning all disabled attr to ''
    docVar.className = "";                            //removes classes on elements
  }
}



// for some reason this function was kind of working- meaning on first load it would work great, but seemed to have odd diminishing returns.  It depended on where I clicked, but the next game or the one after that, would reset or send me to the relocat page before the game had concluded.  I thought I covered my bases in the reset function with (document.getElementById('btn'+i).disabled = '';) but I suppose not.
//
//
//
//

// function playAgain() {
//   y = confirm(winner +" PLAY AGAIN?");
//     if(y===true){
//         reset();
//     } else if (y===false){
//       // window.location="https://www.youtube.com/watch?v=F5O553ZOdRo"
//   }
// }

