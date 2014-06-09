/*
* @Author: stephenstanwood
* @Date:   2014-06-09 14:47:11
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-09 15:35:39
*/

var urls = {};
urls['album'] = 'http://ws.spotify.com/search/1/album.json?q=';
urls['artist'] = 'http://ws.spotify.com/search/1/artist.json?q=';
urls['track'] = 'http://ws.spotify.com/search/1/track.json?q=';

function search() {
  // clear previous search resultsx
  $('body li').remove();

  var searchType = $( '#search-type option:selected' ).val();
  var apiPath = urls[ searchType ];
  apiPath += escape( $( '#search-keyword' ).val() );

  $.getJSON( apiPath ).then( function( results ) {
    var html = '<ul>';
    var num = numResults( results, searchType );
    for ( var i = 0; i < num; i++ ) {
      var name = results[searchType + 's'][ i ][ 'name' ];
      html += '<li>' + name + '</li>';
    }

    $( 'body' ).append( html + '</ul>' );
  });
}

$( '#search' ).on( 'submit', function( e ) {
  e.preventDefault();
  search();
});

$( '#search-type' ).change( search );

function numResults( results, searchType ) {
  return results[ searchType + 's' ].length;
}
