/*
* @Author: Richard Hessler
* @Date:   2014-06-04 16:18:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-06-04 16:33:13
*/
function colorize() {
  var form = document.getElementById('set-color');
  form.addEventListener('click', function(e) {
    e.preventDefault();
    var color = document.getElementById('color-field').value;
    document.querySelectorAll('div')[1].style.backgroundColor=color;
  });
}
colorize();
