$(function() {
  var $form = $( "#form-add-song" );

  $form.on( "submit", function( evt ) {
    evt.preventDefault();

    var data = $( this ).serializeObject();
    $.ajax({
      data: data,
      dataType: "json",
      type: "post",
      url: "/songs"
    });
  });
});