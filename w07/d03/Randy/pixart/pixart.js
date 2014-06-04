function setColor(){
  var colorButton = document.getElementById('set-color');
  colorButton.addEventListener('click', function(event){
    event.preventDefault();
    var fieldColor = document.getElementById('color-field');
    var fieldColorValue = fieldColor.value;
    var brushBox = document.querySelectorAll('div')[1];
    brushBox.style.backgroundColor = fieldColorValue;
  });
}

setColor();
