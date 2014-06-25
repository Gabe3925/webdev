var CharacterView = Backbone.View.extend({
  tagName: 'div',
  className: 'character',

  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click span' : 'onRemove'
  },

  onRemove: function(){
    this.model.destroy();
  },

  render: function(){
    var rendered = '<h2>' + this.model.get('name') + ' -- '
      + this.model.get('coins') + '</h2>'
      + '<span> &times; </span>'
      + '<img src="' + this.model.get('img_url') + '"/>';
    this.$el.html(rendered);
  }

});

var ListView = Backbone.View.extend({
  el: '#container',

  initialize: function(){
    this.listenTo(this.collection, 'add', this.addOne);
  },

  addOne: function(character){
    var view = new CharacterView({model: character});
    this.$el.append(view.el);
  }

})