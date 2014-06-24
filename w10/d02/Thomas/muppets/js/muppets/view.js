
var MuppetAddView = Backbone.View.extend({

  el: '#muppet-add',
  events: {
    'submit': 'onSubmit'
  },

  onSubmit: function(evt) {
    evt.preventDefault();

    var name = this.$('[name="name"]').val();
    var image = this.$('[name="image"]').val();
    var rating = this.$('[name="rating"]').val();

    this.collection.create({
      name: name,
      image: image,
      rating: parseInt(rating)
    });
    this.$('input').val('');
  }
});


var MuppetListView = Backbone.View.extend({

  el: '#muppet-list',
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  render: function() {
    var html = '';
    this.collection.each(function(model) {
      html += '<li>' + model.get('name') + '<button data-remove="'+ model.cid +'">X</button></li>';
    });
    this.$el.html(html);
  },

  events: {
    'click [data-remove]': 'onRemove'
  },

  onRemove: function(evt) {
    var cid = $(evt.target).data('remove');
    var model = this.collection.get(cid);
    model.destroy();
  }

});

muppets.fetch().then(function() {
  var muppetAddView = new MuppetAddView({collection: muppets});
  var muppetListView = new MuppetListView({collection: muppets});
});
