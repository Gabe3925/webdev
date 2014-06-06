function colorize(){
  var form = document.getElementById('paint');
  var brush = document.querySelector('.brush');
  form.addEventListener('submit', function(e){
    e.preventDefault();
    console.log('hello!');
    var color = document.getElementById('color-field').value;
    brush.style.backgroundColor = color;
  });
}
colorize();

function addTwentySquares(){
  var body = document.body;
  for (i = 0; i < 20; i++){
    var divs = document.createElement('div');
    divs.classList.add('square');
    body.appendChild(divs);
  }
}
addTwentySquares();
