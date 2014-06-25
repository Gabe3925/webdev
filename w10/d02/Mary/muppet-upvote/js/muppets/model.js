var MuppetModel = Backbone.Model.extend({
  defaults: {
    name: '',
    image: '',
    rating: 0
  },

  vote: function(num) {
    this.attributes.rating += num;
    console.log(this.attributes.rating);
    this.save();
  }
});

var MuppetsCollection = Backbone.Collection.extend({
  model: MuppetModel,

  localStorage: new Backbone.LocalStorage('muppets'),

  sort_key: 'id',
  comparator: function(muppet) {
    return muppet.get(this.sort_key);
  },
  sortByRating: function(rating) {
    this.sort_key = rating;
    this.sort();
  }
});

var muppets = new MuppetsCollection();
