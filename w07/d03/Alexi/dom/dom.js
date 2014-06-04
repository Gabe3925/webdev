// Log all of the good guys

function logGoodGuys(){
  console.log('Here are the good guys:');
  var goodGuys = document.getElementById('good-guy-list').children;
  for(var i = 0; i < goodGuys.length; i++){
    console.log(goodGuys[i].textContent)
  }
}
logGoodGuys();

// Change Wolverine to Logan
function loganize(){
  var wolverine = document.getElementById('good-guy-list').children[1];
  wolverine.textContent = 'Logan';
}
loganize();

//Change Storm

function addColorToStorm(){
  var storm = document.getElementById('good-guy-list').children[3];
  storm.style.color = 'white';
  storm.style.background = 'black';
}
addColorToStorm();

// Change Magneto to red on purple background
function addColorToMagneto(){
  var magneto = document.getElementById('bad-guy-list').children[0];
  magneto.style.color = 'red';
  magneto.style.background = 'purple';
}
addColorToMagneto();

// Add Big class to the title
function bigTitle() {
  var title = document.querySelector('h1');
  title.classList.toggle('big');
}

// Given a tag name and font, change the font
function changeTagFont(tagName, fontFamily){
  // get all instances of a tag
  var elems = document.getElementsByTagName(tagName);
  // iterate over the array of nodes
  for (var i = 0; i< elems.length; i++){
    elems[i].style.fontFamily = fontFamily;
  }
}
changeTagFont('h1', 'Lobster Two');

// All mutants have superpowers
function  addSuperPowersToMutants() {
  var mutants = document.querySelectorAll('.mutant');
  for (var i = 0; i < mutants.length; i++)
    mutants[i].innerHTML += ' has super powers!';
}
addSuperPowersToMutants();
