var Link = Backbone.Model.extend({
  urlRoot: '/links',
  
  defaults: {
    title: '',
    url: '',
    votes: 1
  },

  getLink: function(){
    this.save('links', this.get('links') + 1);
  }
});

var LinkCollection = Backbone.Collection.extend({
  model: Link,
  url: '/links'
});
