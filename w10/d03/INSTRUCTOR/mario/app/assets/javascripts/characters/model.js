var Character = Backbone.Model.extend({
  // urlRoot: '/characters',
  defaults: {
    name: '',
    img_url: '',
    coins: 0
  }

});

var CharacterCollection = Backbone.Collection.extend({
  model: Character,
  url: '/characters'
});