/*
* @Author: stephenstanwood
* @Date:   2014-06-10 11:53:22
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-10 12:15:58
*/

$( function() {

  var boxes = $( 'li input[type="checkbox"]' );
  boxes.change( function() {
    var character = $( this ).parent();
    var id = character.data( 'character-id' );

    var dead = $( this ).prop( 'checked' );
    console.log( dead );

    $.ajax({
      url: '/characters/' + id,
      type: 'post',
      dataType: 'json',
      data: { _method: 'patch', character: { dead: dead } }
    });
  });

});
