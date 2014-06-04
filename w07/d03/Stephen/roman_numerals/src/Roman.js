/*
* @Author: stephenstanwood
* @Date:   2014-06-04 09:30:43
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-04 10:06:08
*/

var ROMAN_NUMERALS = [
    [ 'M', 1000 ],
    [ 'CM', 900 ],
    [ 'D',  500 ],
    [ 'CD', 400 ],
    [ 'C',  100 ],
    [ 'XC',  90 ],
    [ 'L',   50 ],
    [ 'XL',  40 ],
    [ 'X',   10 ],
    [ 'IX',   9 ],
    [ 'V',    5 ],
    [ 'IV',   4 ],
    [ 'I',    1 ] ];

// converts a number from normal form to Roman Numerals
function romanize( num ) {
  if ( num < 0 ) throw "Can't convert negative number!";

  var res = "";

  for ( var i = 0, len = ROMAN_NUMERALS.length; i < len; i++ ) {
    var num_sym = parseInt( num / ROMAN_NUMERALS[i][1] );

    for ( var s = 0; s < num_sym; s++ ) {
      res += ROMAN_NUMERALS[i][0];
    }

    num %= ROMAN_NUMERALS[i][1];
  }

  return res;
}
