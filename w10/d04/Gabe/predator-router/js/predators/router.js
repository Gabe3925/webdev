var PredatorsRouter = Backbone.Router.extend({

  routes:{
    'predators': 'list',
    'predators/:id': 'detail',
  },

  list: function(){
    var list = new PredatorListView({collection: predatorsCollection});
view.render().appendTo('#predator-container');

  },

  detail: function(){
    var detail = new PredatorDetailView({model: predatorsCollection.at(0)});
detail.render().appendTo('#predator-container');
  }

});

var router = new PredatorsRouter();
Backbone.history.start();
