var checkingBalance = document.getElementById('checking-balance');
var savingsBalance = document.getElementById('savings-balance');


//As a user, I want to deposit money into one of the bank accounts
function depositChecking() {
  var checkingDepositButton = document.getElementById('checking-deposit');
  checkingDepositButton.addEventListener('click', function() {
    var checkingDepositAmount = document.getElementById('checking-amount').value;
    //why does appending dollar sign in below break the function?
    checkingBalance.innerHTML = parseInt(checkingBalance.innerHTML.replace('$', '')) + parseInt(checkingDepositAmount);
    checkingBalance.innerHTML = '$ ' + checkingBalance.innerHTML;
    document.getElementById('checking-amount').value = '';
  });
}
depositChecking();

function depositSavings() {
    var savingsDepositButton = document.getElementById('savings-deposit');
    savingsDepositButton.addEventListener('click', function() {
      var savingsDepositAmount = document.getElementById('savings-amount').value;
      savingsBalance.innerHTML = parseInt(savingsBalance.innerHTML.replace('$', '')) + parseInt(savingsDepositAmount);
      savingsBalance.innerHTML = '$ ' + savingsBalance.innerHTML;
      document.getElementById('savings-amount').value = '';
    });
}
depositSavings();

//As a user, I want to withdraw money from one of the bank accounts
function withdrawChecking() {
  var checkingWithdrawButton = document.getElementById('checking-withdraw');
  checkingWithdrawButton.addEventListener('click', function() {
    var checkingWithdrawAmount = document.getElementById('checking-amount').value;
    if ((parseInt(checkingBalance.innerHTML.replace('$', ''))) >= (parseInt(checkingWithdrawAmount))) {
      checkingBalance.innerHTML = parseInt(checkingBalance.innerHTML.replace('$', '')) - parseInt(checkingWithdrawAmount);
      checkingBalance.innerHTML = '$ ' + checkingBalance.innerHTML;
      document.getElementById('checking-amount').value = '';
    } else {
      document.getElementById('checking-amount').value = '';
    }
  });
}
withdrawChecking();

function withdrawSavings() {
  var savingsWithdrawButton = document.getElementById('savings-withdraw');
  savingsWithdrawButton.addEventListener('click', function() {
    var savingsWithdrawAmount = document.getElementById('savings-amount').value
    if ((parseInt(savingsBalance.innerHTML.replace('$', ''))) >= (parseInt(savingsWithdrawAmount))) {
      savingsBalance.innerHTML = parseInt(savingsBalance.innerHTML.replace('$', '')) - parseInt(savingsWithdrawAmount);
      savingsBalance.innerHTML = '$ ' + savingsBalance.innerHTML;
      document.getElementById('savings-amount').value = '';
    } else {
      document.getElementById('savings-amount').value = '';
    }
  });
}
withdrawSavings();
