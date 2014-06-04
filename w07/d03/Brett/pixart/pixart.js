function setColor() {
  var form = document.getElementById("color-form");
  form.addEventListener("submit", function(event) {
    event.preventDefault();
    var color = document.getElementById("color-field").value;
    var brush = document.querySelector(".brush");
    brush.style.backgroundColor = color;
  });
}
setColor();

function addSquares() {
  for(i = 0; i < 20; i++) {
    square = document.createElement("div");
    square.classList.add("square");
    document.body.appendChild(square);
  }
}
addSquares();
