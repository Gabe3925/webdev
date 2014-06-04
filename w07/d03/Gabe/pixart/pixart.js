function brushBoxChanger() {
  form = document.getElementById('form');
  form.addEventListener('submit', function(event){
    event.preventDefault();
    var color = document.getElementById('color-field').value;
    var colorbox = document.querySelector('.brush');
    colorbox.style.backgroundColor = color;
  })

}
brushBoxChanger();
