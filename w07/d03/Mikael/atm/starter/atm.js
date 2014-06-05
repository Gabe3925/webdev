var checkbal = document.getElementById('checking-balance');

var savbal = document.getElementById('savings-balance').textContent;

var checkamt = document.getElementById('checking-amount');
var savamt = document.getElementById('savings-amount');

var checkdepositbutton = document.querySelector('#checking-deposit');

var savdepositbutton = document.querySelector('#savings-deposit');

checkdepositbutton.addEventListener('click', function() {
  var balance = parseInt(checkbal.textContent.split('$')[1])
  balance += parseInt(checkamt.value);
  checkbal.textContent = '$' + balance.toString();
});
