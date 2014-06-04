function setColor() {
  var form = document.getElementById('set-color')
  form.addEventListener('submit', function(event) {
    event.preventDefault();
    var color = document.getElementById('color-field').value;
    document.querySelector('.brush').style.backgroundColor = color;
  });
}
setColor();

function createSquares() {
  for (var i = 0; i < 10; i++) {
    var square = document.createElement('div');
    document.body.appendChild(square);
    square.classList.add('square');
  }
}
createSquares();

