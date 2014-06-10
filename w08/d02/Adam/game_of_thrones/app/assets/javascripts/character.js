$(function () {

  var $boxes = $('li input[type="checkbox"]');
  $boxes.on('change', function() {
    var character = $(this).parent();

    var dead = $(this).prop('checked');

    $.ajax({
      url: '/characters/' + character.data('character-id'),
      type: 'POST',
      dataType: 'json',
      data: { _method: 'PATCH', character: {dead: dead} }

    });

  });

});
