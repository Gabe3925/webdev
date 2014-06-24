var MuppetModel = Backbone.Model.extend({
  defaults: {
    name: '',
    image: '',
    rating: 0,
    upvote: (1, -1)
  }
});

var MuppetsCollection = Backbone.Collection.extend({
  model: MuppetModel,
  localStorage: new Backbone.LocalStorage('muppet')
});

var muppets = new MuppetsCollection();
muppets.comparator = 'rating';
