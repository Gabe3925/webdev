define(function(require){

  var Backbone = require('backbone');
  var HomeView = require('../views/home');

  var WatchioRouter = backbone.Router.extend({
    routes: {
      'home': 'homeShower'
    },

     homeShower: function(){
        //sets HomeView to the page?
        this.$el.html(HomeView);
    }

  })

//Export a new instance of the router
  return new WatchioRouter();

});
