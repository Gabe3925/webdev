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
