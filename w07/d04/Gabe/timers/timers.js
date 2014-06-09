// When "Start" Button is clicked, "Stop Watch" should become "Time elapsed: 0" & increment every second.

// When "Reset" is clicked, the text should return to "Stop Watch"

// When "Pause" is clicked, the text should say "Time elapsed: 1", but stop incrementing.



var start = document.getElementById("start");
var timer = document.getElementById("timer");
var reset = document.getElementById("reset");
var pause = document.getElementById("pause");


var seconds = 0;
var timerID;

start.addEventListener("click", function(){
  timer.textContent = "Time Elapsed" + seconds;
  setInterval(function){
    seconds ++;
    timer.textContent = "Time Elasped: " + seconds;
  }, 1000);
});

reset.addEventListener("click", function{
  timer.textContent = "Stop Watch";
  clearInterval(timerID);
  seconds = 0;
})

