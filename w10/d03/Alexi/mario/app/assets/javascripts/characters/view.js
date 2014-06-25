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
    this.model.destory();
  },

  render: function(){
    var rendered = '<h2>' + this.model.get('name') + ' -- '
      + this.model.get('coins') + '</h2>'
      + '<span> &hearts; </span>'
      + '<img src="' + this.model.get('img_url') + '"/>';
    this.$el.html(rendered);
  }

});
mario = new Character({name: 'yoshi', img_url: 'http://upload.wikimedia.org/wikipedia/en/3/39/YoshiMarioParty9.png'})
marioView = new CharacterView({model: mario});
$('body').append(marioView.el);
