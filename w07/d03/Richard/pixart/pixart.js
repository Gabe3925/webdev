/*
* @Author: Richard Hessler
* @Date:   2014-06-04 16:18:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-06-04 16:53:49
*/


/* Commit 1 */
function colorize() {
  var form = document.getElementById('set-color');
  form.addEventListener('click', function(e) {
    e.preventDefault();
    var color = document.getElementById('color-field').value;
    document.querySelectorAll('div')[1].style.backgroundColor=color;
  });
}
colorize();

function createDivs() {
  for(var i = 20; i > 0; i--){
  var div = document.createElement('div');
  div.setAttribute('class','square');
  document.body.appendChild(div);
}
}
createDivs();
/* Commit 2 */

