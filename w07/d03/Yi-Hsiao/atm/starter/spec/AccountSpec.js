describe( "Bank Account", function() {
  var bankAccount;
  beforeEach(function() {
    bankAccount = new Account();
  });

  describe( "new Bank Account", function() {
    it( "should start with a balance of $0", function() {
      expect( bankAccount.balanceString ).toEqual( "$0" );
    });
  });

  describe( "deposit", function() {
    it( "should add the given money to the bank account", function() {
      bankAccount.deposit( 10 );

      expect( bankAccount.balanceString ).toEqual( "$10" );
    });

    it( "should add the given money cumulatively to the bank account", function() {
      bankAccount.deposit( 10 );
      bankAccount.deposit( 20 );

      expect( bankAccount.balanceString ).toEqual( "$30" );
    });
  });

  describe( "withdraw", function() {
    beforeEach(function() {
      bankAccount.deposit( 100 ); // seed bank account with $100 for each test;
    });

    it( "should withdraw money from the bank account", function() {
      bankAccount.withdraw( 10 );

      expect( bankAccount.balanceString ).toEqual( "$90" );
    });

    it( "should withdraw money cumulatively from the bank account", function() {
      bankAccount.withdraw( 10 );
      bankAccount.withdraw( 20 );

      expect( bankAccount.balanceString ).toEqual( "$70" );
    });

    it( "should not withdraw money, if the balance goes below 0", function() {
      bankAccount.withdraw( 150 );

      expect( bankAccount.balanceString ).toEqual( "$100" );
    });
  });
});