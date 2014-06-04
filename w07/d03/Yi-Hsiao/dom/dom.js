// log all good guys
(function() {
  function xMen() {}
  this.xMen = new xMen();

  xMen.prototype.goodGuys = document.querySelectorAll( "#good-guy-list li" );

  xMen.prototype.findGoodGuys = function() {
    console.log( "These are the good guys:" );
    for ( var i=0; i < this.goodGuys.length; i++ ) {
      console.log( this.goodGuys[i].textContent );
    }
  };

  xMen.prototype.findGoodMutant = function( name ) {
    return function() {
      for ( var i=0; i < this.goodGuys.length; i++ ) {
        if ( this.goodGuys[i].textContent === name ) {
          return this.goodGuys[i];
        }
      }
    };
  };

  for ( var i = 0; i < xMen.prototype.goodGuys.length; i++ ) {
    var goodGuyName = xMen.prototype.goodGuys[i].textContent;
    xMen.prototype["find" + goodGuyName] = xMen.prototype.findGoodMutant( goodGuyName );
  }

  // find Wolverine
  xMen.prototype.findWolverine = function() {
    for ( var i=0; i < this.goodGuys.length; i++ ) {
      if ( this.goodGuys[i].textContent === "Wolverine" ) {
        return this.goodGuys[i];
      }
    }
  };
})();