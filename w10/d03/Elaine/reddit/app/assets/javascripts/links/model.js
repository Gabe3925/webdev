var TheLink = Backbone.Model.extend({

  defaults: {
    title: '',
    url: '',
    upvotes: 0
  },

  addUpvote: function() {
    this.save('upvotes', this.get('upvotes') + 1);
  }
});


var LinkCollection = Backbone.Collection.extend({

  model: TheLink,
  url: '/links'
});
