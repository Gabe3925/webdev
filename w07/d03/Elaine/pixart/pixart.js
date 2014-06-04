function colorize() {
  var form = document.getElementById('form');
  form.addEventListener('submit', function(event) {
    event.preventDefault();
    // console.log(event);
    var color = document.getElementById('color-field').value;
    document.querySelector('.brush').style.backgroundColor = color;
  });
}
colorize();
