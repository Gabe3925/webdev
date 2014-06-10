$(function(){

  var $boxes = $('li input[type="checkbox"]');
  bindCheckBoxes($boxes);
  bindForm();
  var $deleteButtons = $('li span');
  bindDeleteButtons($deleteButtons);

  var $form = $('form');
  $form.on('submit', function(evt) {
    evt.preventDefault();

    var $data = $(this).serializeObject();

    console.log($data);

    $.ajax({
      url: '/characters',
      type: 'post',
      dataType: 'json',
      data: {character: $data},
      context: this
    })
    then(appendCharacter);

  });

});

function bindCheckBoxes(boxes) {
  boxes.change(function() {
    var character = $(this).parent();

    // console.log(character.data('character-id'));

    var dead = $(this).prop('checked');
    // console.log(dead);

    $.ajax({
      url: '/characters/' + character.data('character-id'),
      type: 'patch',
      dataType: 'json',
      data: { character: {dead: dead}}
    });

    dead ? character.addClass('dead') : character.removeClass('dead');

  });

}

function appendCharacter(character) {
  this.reset();
  var li = $('<li data-character-id="' + character.id '">' + character.name + '</li>');
  li.append($('<input type="checkbox">'));
  li.append($('<span>&hearts;</span>'))
  $('ul').append(li);
  bindCheckBoxes(li.find('input'));
}

function bindDeleteButtons(buttons) {
  buttons.on('click', function() {
    var character = $(this).parent();
    $.ajax({
      url: '/characters/' + character.data('character-id'),
      type: 'delete',
      dataType: 'json',
      context: character
    }).then(function(){
      this.remove();
    });
  });
}
