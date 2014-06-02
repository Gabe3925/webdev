// this is a comment

/*
  this is a
  block comment
*/

// variable assignment
var variable = "value";
console.log(variable);

// conditionals
var number = 10;
if (number > 5) {
  console.log("It's greater than 5.");
} else if (number < 5) {
  console.log("It's less than 5.");
} else {
  console.log("It's equal to 5.");
}

// switch statement
var day = "Saturday";
switch (day) {
  case "Monday":
    console.log("The workweek is starting.");
    break;
  case "Wednesday":
    console.log("Halfway through the workweek.");
    break;
  case "Friday":
    console.log("The workweek is almost over.");
    break;
  case "Saturday":
  case "Sunday":
    console.log("It's the weekend!");
    break;
  default:
    console.log("Keep on trucking.");
}

// while loop
var count = 10;
while (count > 0)  {
  console.log(count);
  count--;
}