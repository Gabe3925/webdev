define(function(require) {

  var Backbone = require("backbone");
  var _ = require("underscore");
  var detailHTML = require("text!../templates/detail.html");
  var watchlist = require("../models/watchlist");

  var DetailView = Backbone.View.extend({
    tagName: "div",
    template: _.template(detailHTML),

    initialize: function() {
      this.listenTo(this.model, "sync", this.render);
    },

    events: {
      "click #watchlist-toggle": "onSave"
    },

    onSave: function(event) {
      event.preventDefault();

      var title = this.model.get("Title");
      var imdbID = this.model.get("imdbID");

      watchlist.create({title: title, imdb_id: imdbID});
    },

    render: function() {
      var rendered = this.template(this.model.toJSON());
      return this.$el.html(rendered);
    }
  });

  return DetailView;
});
