var checkbal = document.getElementById('checking-balance');

var savbal = document.getElementById('savings-balance');

var checkamt = document.getElementById('checking-amount');
var savamt = document.getElementById('savings-amount');

var checkdepositbutton = document.querySelector('#checking-deposit');

var savdepositbutton = document.querySelector('#savings-deposit');

var checkwithdrawbutton = document.querySelector('#checking-withdraw');

var savwithdrawbutton = document.querySelector('#savings-withdraw');

checkdepositbutton.addEventListener('click', function() {
  var balance = parseInt(checkbal.textContent.split('$')[1])
  balance += parseInt(checkamt.value);
  checkbal.textContent = '$' + balance.toString();
});

savdepositbutton.addEventListener('click', function() {
  var balance = parseInt(savbal.textContent.split('$')[1])
  balance += parseInt(savamt.value);
  savbal.textContent = '$' + balance.toString();
});

checkwithdrawbutton.addEventListener('click', function() {
  var balance = parseInt(checkbal.textContent.split('$')[1])
  balance -= parseInt(checkamt.value);
  if (balance > 0) {
    checkbal.textContent = '$' + balance.toString();
  }
});

savwithdrawbutton.addEventListener('click', function() {
  var balance = parseInt(savbal.textContent.split('$')[1])
  balance -= parseInt(savamt.value);
  if (balance > 0) {
    savbal.textContent = '$' + balance.toString();
  }
});
