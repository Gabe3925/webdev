// the index of the current rail in the zig-zag

function encode( message ) {
  return encodeCustom( message, 3 );
}

function encodeCustom( message, num ) {
  var RAIL = setUpRailSequence( num ); // [ 0, 1, 2, 1 ]
  var rails = [];
  var numRails = num;

  // probably unnecessary -- start off as empty strings
  for ( var i = 0; i < numRails; i++ ) rails[ i ] = '';

  // move through each character of the message
  for ( var i = 0, l = message.length; i < l; i++ ) {
    var r = i % ( ( numRails - 1 ) * 2 );
    rails[ RAIL[ r ] ] += message[ i ];
  }

  // return the rails as a single string
  return rails.join( '' );
}

function setUpRailSequence( num ) {
  var res = [];

  // counting up (e.g. 0, 1, 2, 3)
  for ( var i = 0; i < num; i++ ) res.push( i );

  // counting back down (e.g. 2, 1)
  for ( var i = num - 2; i > 0; i-- ) res.push( i );

  return res;
}
