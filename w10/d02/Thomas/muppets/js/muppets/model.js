
// a Model for individual muppet list items:
var MuppetModel = Backbone.Model.extend({
  defaults: {
    name: '',
    image: '',
    rating: 1
  }
});

//a Collection for a list of muppet items:
//why does the model need to be specified?
var MuppetsCollection = Backbone.Collection.extend({
  model: MuppetModel,
  localStorage: new Backbone.LocalStorage('muppets')
});

//what does the below accomplish, and why does it look like I am calling a function?
var muppets = new MuppetsCollection();
