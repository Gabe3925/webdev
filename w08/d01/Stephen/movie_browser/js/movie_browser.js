/*
* @Author: stephenstanwood
* @Date:   2014-06-09 16:51:16
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-09 17:17:40
*/

$( '#movie-select' ).hide();

function search( keyword ) {
  var apiPath = 'http://www.omdbapi.com/?s=';
  apiPath += escape( $( '#movie-search' ).val() );
  $.getJSON( apiPath ).then( function() {
    console.log( results );
  });
}

function processResults( results ) {
  console.log( results );
  // var num = numResults( results, searchType );
  // for ( var i = 0; i < num; i++ ) {



  //   var name = results[searchType + 's'][ i ][ 'name' ];
  //   html += '<li>' + name + '</li>';
}

function numResults( results, searchType ) {
  return results[ searchType + 's' ].length;
}

$( '#search' ).on( 'submit', function( e ) {
  e.preventDefault();
  $( '#movie-select' ).show();
  search();
});
