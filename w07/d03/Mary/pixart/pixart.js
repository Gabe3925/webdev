function setColor() {
  var form = document.getElementById('set-color')
  form.addEventListener('submit', function(event) {
    event.preventDefault();
    var color = document.getElementById('color-field').value;
    document.querySelector('.brush').style.backgroundColor = color;
  });
}
setColor();
