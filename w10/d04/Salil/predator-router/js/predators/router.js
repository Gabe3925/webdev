

var PredatorsRouter = Backbone.Router.extend({
  routes: {
    'predators': 'list',
    'predators/:id': 'detail'
  },

  clearView: function(){
    if (this.view) {
      this.view.remove();
    }
  },

  list: function(){
    this.clearView();
    this.view = new PredatorListView({ collection: predatorsCollection });
    this.view.render().appendTo('#predator-container');
  },

  detail: function(id){
    this.clearView();
    this.view = new PredatorDetailView({model: predatorsCollection.get(id)});
    this.view.render().appendTo('#predator-container');
  }
});

var router = new PredatorsRouter();
Backbone.history.start();
