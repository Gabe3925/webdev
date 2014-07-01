define(function(require) {

  var Backbone = require("backbone");
  var watchlistItems = require("../models/watchlist");

  var WatchlistView = Backbone.View.extend({
    el: "#watchlist",

    initialize: function() {
      this.listenTo(this.collection, "sync", this.render);
      this.render();
    },

    events: {
      "click li": "onClick"
    },

    render: function() {
      var html = "";

      this.collection.each(function(model) {
        html += "<li><a href='#movies/" + model.get("imdb_id") + "'>" + model.get("title") + "</a></li>";
      });

      this.$el.html(html);
    },

    onClick: function() {
      $("watchlist-toggle").text("Remove from Watchlist");
    }
  });

  return new WatchlistView({collection: watchlistItems});
});
