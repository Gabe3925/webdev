function Account() {
  this.balance = 0;
  this.balanceString = "$0";
}

Account.prototype.deposit = function( amount ) {
  this.balance += amount;
  this.setBalanceString();

  return this;
};

Account.prototype.withdraw = function( amount ) {
  if ( amount <= this.balance ) {
    this.balance -= amount;
    this.setBalanceString();

    return this;
  } else {
    return null;  // return null if insufficient funds
  }
};

Account.prototype.setBalanceString = function() {
  this.balanceString = "$" + this.balance;  
};