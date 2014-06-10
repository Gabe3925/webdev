$(function() {

  var authenticityToken = $( "meta[name='csrf-token']" ).attr( "content" );
  var charIDAttr = "char-id";
  var $list = $( "#hit-list" );
  var $form = $( "#add-char-to-hitlist-form" );

  function initialize() {
    // update character's status when checkboxes are clicked
    $list.on( "change", "input[type='checkbox']", function() {
      var $character = $( this ).parent();
      var charID = $character.data( charIDAttr );
      var charDead = $(this).prop( "checked" );

      updateCharacter( charID, { dead: charDead } );

      // toggle .dead class for character, based on their status
      $character.toggleClass( "dead", charDead );
    });

    // add character to page when form is submitted
    $form.on( "submit", function( evt ) {
      evt.preventDefault();
      data = $( this ).serializeObject();
      addCharacter( data ).then( appendCharacter );
    });
  }

  // update characters in DB
  function updateCharacter( id, charAttributes ) {
    return $.ajax({
      url: "/characters/" + id,
      type: "patch",
      dataType: "json",
      data: { character: charAttributes }
    });
  }

  // add characters in DB
  function addCharacter( data ) {
    return $.ajax({
      url: "/characters/",
      type: "post",
      dataType: "json",
      data: data
    });
  }

  // add character to list
  function appendCharacter( character ) {
    var html = '<li data-' + charIDAttr + '="' + character.id + '">';
    html += '<input type="checkbox">';
    html += character.name;
    html += "</li>";

    $list.append( html );
  }

  initialize();
});