//Commit One: Set Color
function setColor () {
  var colorButton = document.getElementById('form');
  colorButton.addEventListener('submit', function(event) {
    event.preventDefault ();
    var color = document.getElementById('color-field').value;
    var box = document.querySelector('.brush');
    box.style.backgroundColor = color;
  });
}
setColor();
