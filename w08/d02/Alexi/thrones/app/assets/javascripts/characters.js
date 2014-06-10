$(function() {
  var $boxes = $('input[type="checkbox"]');
  
  $boxes.on('change', function(){
    var character = $(this).parent();
    var dead = $(this).prop('checked');
    
    $.ajax({
      url: '/characters/' + character.data('character-id'),
      type: 'patch',
      dataType: 'json',
      data: { character: { dead: dead } }
    });
  });
});
