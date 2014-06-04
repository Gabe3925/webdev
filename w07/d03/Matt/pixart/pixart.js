// function colorize() {
//   var form = document.getElementById('color-field');
//   var brush = document.getElementsByClassName('brush');
//   form.addEventListener('submit', function(e) {
//     e.preventDefault();
//     var color = document.brush.value;
//     brush.style.background = color;
//   });
// }

function colorize() {
  var form = document.getElementById('form');
  var input = document.querySelector('#color-field');
  var brush = document.querySelector('.brush');

  form.addEventListener('submit', function(event) {
    event.preventDefault();
    brush.style.background = input.value
  });
}

colorize();

function boxize() {
  var brush = document.querySelector('.brush');
  var conBox = document.querySelector('.controls');

  for (i=0; i <= 20; i++) {
    var box = document.createElement('div');
    box.setAttribute('class', 'brush');

    conBox.appendChild(box)
  }
}

boxize();
