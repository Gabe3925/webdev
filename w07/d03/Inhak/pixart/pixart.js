function colorize(){
  var form = document.getElementById('paint');
  var square = document.querySelector('.brush');
  form.addEventListener('submit', function(e){
    e.preventDefault();
    console.log('hello!');
    var color = document.getElementById('color-field').value;
    square.style.backgroundColor = color;
  });
}
colorize();
