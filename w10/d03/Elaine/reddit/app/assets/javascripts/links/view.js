var LinkView = Backbone.View.extend({
  tagName: 'div',
  className: 'link',

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click span' : 'onRemove',
    'click button' : 'onUpvote',
  },

  onRemove: function() {
    this.model.destroy();
  },

  onUpvote: function() {
    this.model.addUpvote();
  },

  template: _.template($('#link-html').html()),

  render: function() {
    var rendered = this.template({link: this.model});
    this.$el.html(rendered);
  }
});

var ListView = Backbone.View.extend({
  el: '#container',

  initialize: function() {
    this.listenTo(this.collection, 'add', this.addOne);
    this.listenTo(this.collection, 'add remove change sort', this.render);
  },

  addOne: function(link) {
    var view = new LinkView({model: link});
    this.$el.append(view.el);
  },

  template: _.template($('#link-html').html()),

  render: function() {
    var html = '';

    this.collection.each(function(one) {
      var view = new LinkView({model: one});
      var rendered = view.template({link: one});
      html += rendered;
    });
    this.$el.append(html);
  }
});

var FormView = Backbone.View.extend({

  el: 'form',

  events: {
    'submit' : 'createLink'
  },

  createLink: function(evt) {
    evt.preventDefault();

    var url = this.$('[name="url"]').val();

    var title = '';


    this.collection.create({
      title: title,
      url: url
    });
  }
});
