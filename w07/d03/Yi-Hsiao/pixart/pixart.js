(function() {

  // add click event to set color button
  var setColorButton = document.getElementById( "set-color" );
  setColorButton.addEventListener( "click", function() {
    var desiredColor = document.getElementById( "color-field" ).value;
    document.body.style.background = desiredColor;
  });
})();