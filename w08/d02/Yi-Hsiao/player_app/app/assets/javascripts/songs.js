$(function() {
  var $form = $( "#form-add-song" );
  var $playlist = $( "#tbody-playlist" );

  $form.on( "submit", function( evt ) {
    evt.preventDefault();

    var data = $( this ).serializeObject();
    addSongToDB( data )
      .then( addSongToView )
      .then( clearForm );
  });

  function addSongToDB( data ) {
    return $.ajax({
      data: data,
      dataType: "json",
      type: "post",
      url: "/songs"
    });
  }

  // adds a song to the playlist view
  function addSongToView( song ) {
    var html = "<tr>";
        html += "<td>" + song.title + "</td>";
        html += "<td>" + song.artist + "</td>";
        html += "<td>" + spotifyIframe( song.preview_url ) + "</td>";
        html += "</tr>";
    $playlist.append( html );
  }

  // returns html for a spotify play widget for a specified song URL
  function spotifyIframe( spotifyUrl ) {
    var html = '<iframe src="' + 'https://embed.spotify.com/?uri=' + spotifyUrl + '" ';
        html += 'with="300" height="80" frameborder="0" allowtransparency="true">';
        html += "</iframe>";

    return html;
  }

  // resets the form
  function clearForm() {
    $form[0].reset();
  }
});