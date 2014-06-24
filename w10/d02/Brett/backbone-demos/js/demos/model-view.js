// API: http://itsthisforthat.com/api.php?json
// PARAMS: {dataType: 'jsonp', jsonp: 'call'}

var IdeaModel = Backbone.Model.extend({

  url: "http://itsthisforthat.com/api.php?json",

  defaults: {
    "this": "Sandwich",
    "that": "Cat"
  },

  reload: function() {
    this.fetch({dataType: "jsonp", jsonp: "call"});
  }

});

var IdeaView = Backbone.View.extend({

  el: "#idea",

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.render();
  },

  render: function() {
    var message = this.$el.html(this.model.get("this") + "<span> for </span>" + this.model.get("that"));
    this.$("p").html(message)
  },

  events: {
    "click #idea-reload": "onReload"
  },

  onReload: function(event) {
    this.model.reload();
  }
});

var idea = new IdeaModel();
var ideaView = new IdeaView({model: idea});

idea.reload();
