$(function(){
  var characters = new CharacterCollection();
  var charactersView = new ListView({collection: characters});
  characters.fetch();
});