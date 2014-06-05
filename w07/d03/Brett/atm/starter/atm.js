// var checkingBalance = 0;
// var savingsBalance = 0;

// function checkingDeposit() {
//   var form  = document.getElementById("checking-deposit-form");
//   form.addEventListener("submit", function(event) {
//     event.preventDefault();
//     var deposit = document.getElementById("checking-amount").value;
//     checkingBalance += deposit;

//     var currency = document.getElementById("checking-balance").innerHTML;
//     currency.replace(/[$,]+/g,"");
//     deposit_amt = parseFloat(currency);
//     checkingBalance += deposit_amt;
//     debugger;
//     balance = "$" + checkingBalance;
//   });
// }
// checkingDeposit();

var checkingBalance = 0;
var checkingBalanceString = document.getElementById("checking-balance")

var savingsBalance = 0;
var savingsBalanceString = document.getElementById("savings-balance")

function checkingDeposit() {
  var button = document.getElementById("checking-deposit");
  button.addEventListener("click", function() {
    var deposit = document.getElementById("checking-amount").value;
    deposit = parseInt(deposit);
    checkingBalance += deposit;
    checkingBalanceString.innerHTML = "$" + checkingBalance;
  });
}
checkingDeposit();

function checkingWithdrawal() {
  var button = document.getElementById("checking-withdraw");
  button.addEventListener("click", function() {
    var withdrawal = document.getElementById("checking-amount").value;
    withdrawal = parseInt(withdrawal)
    if (checkingBalance >= withdrawal) {
      checkingBalance -= withdrawal;
      checkingBalanceString.innerHTML = "$" + checkingBalance;
    } else if (checkingBalance + savingsBalance >= withdrawal) {
      savingsBalance -= (withdrawal - checkingBalance)
    }
  });
}
checkingWithdrawal();

function savingsDeposit() {
  var button = document.getElementById("savings-deposit");
  button.addEventListener("click", function() {
    var deposit = document.getElementById("savings-amount").value;
    deposit = parseInt(deposit);
    savingsBalance += deposit;
    savingsBalanceString.innerHTML = "$" + savingsBalance;
  });
}
savingsDeposit();

function savingsWithdrawal() {
  var button = document.getElementById("savings-withdraw");
  button.addEventListener("click", function() {
    var withdrawal = document.getElementById("savings-amount").value;
    withdrawal = parseInt(withdrawal)
    if (savingsBalance >= withdrawal) {
      savingsBalance -= withdrawal;
      savingsBalanceString.innerHTML = "$" + savingsBalance;
    }
  });
}
savingsWithdrawal();
