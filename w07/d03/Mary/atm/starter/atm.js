var checkingBalance = document.getElementById('checking-balance');
var checkingAmount = document.getElementById('checking-amount');
var checkingDepositButton = document.getElementById('checking-deposit');
var checkingWithdrawButton = document.getElementById('checking-withdraw');
var savingsBalance = document.getElementById('savings-balance');
var savingsAmount = document.getElementById('savings-amount');
var savingsDepositButton = document.getElementById('savings-deposit');
var savingsWithdrawButton = document.getElementById('savings-withdraw');


checkingDepositButton.addEventListener('click', function() {
  checkingBalance.textContent = parseInt(checkingBalance.textContent) + parseInt(checkingAmount.value)
  checkingBalance.classList.remove('zero');
});


checkingWithdrawButton.addEventListener('click', function() {
    if (parseInt(checkingAmount.value) <= parseInt(checkingBalance.textContent)) {
      checkingBalance.textContent = parseInt(checkingBalance.textContent) - parseInt(checkingAmount.value);
    } else if (parseInt(checkingAmount.value) > parseInt(checkingBalance.textContent) && parseInt(savingsAmount.value) <= parseInt(savingsBalance.textContent)) {
      savingsBalance.textContent = parseInt(savingsBalance.textContent) - ((parseInt(checkingAmount.value) - parseInt(checkingBalance.textContent)));
      checkingBalance.textContent = 0;
      checkingBalance.classList.add('zero')
       }
  });


savingsDepositButton.addEventListener('click', function() {
  savingsBalance.textContent = parseInt(savingsBalance.textContent) + parseInt(savingsAmount.value);
  savingsBalance.classList.remove('zero');
});


savingsWithdrawButton.addEventListener('click', function() {
  if (parseInt(savingsAmount.value) <= parseInt(savingsBalance.textContent)) {
    savingsBalance.textContent = parseInt(savingsBalance.textContent) - parseInt(savingsAmount.value);
  } else if (parseInt(savingsAmount.value) > parseInt(savingsBalance.textContent) && parseInt(checkingAmount.value) <= parseInt(checkingBalance.textContent)) {
    checkingBalance.textContent = parseInt(checkingBalance.textContent) - ((parseInt(savingsAmount.value) - parseInt(savingsBalance.textContent)
    savingsBalance.textContent = 0;
    savingsBalance.classList.add('zero') };
});

