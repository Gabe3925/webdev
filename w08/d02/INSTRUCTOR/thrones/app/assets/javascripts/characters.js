$(function(){

  var $boxes = $('li input[type="checkbox"]');
  $boxes.on('change', function(){
    var character = $(this).parent();
    console.log(character.data('character-id'));

    var dead = $(this).prop('checked');
    console.log(dead);

    $.ajax({
      url: '/characters/' + character.data('character-id'),
      type: 'post',
      dataType: 'json',
      data: {_method: 'patch', character: {dead: dead}}
    });

  });

});