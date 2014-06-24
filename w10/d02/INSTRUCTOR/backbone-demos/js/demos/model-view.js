// API: http://itsthisforthat.com/api.php?json
// PARAMS: {dataType: 'jsonp', jsonp: 'call'}

<<<<<<< HEAD
=======

>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
var IdeaModel = Backbone.Model.extend({

  url: 'http://itsthisforthat.com/api.php?json',

  defaults: {
<<<<<<< HEAD
    'this': 'Default THIS',
    'that': 'Default THAT'
  }

});

=======
    'this': 'Chair',
    'that': 'Dog'
  },

  reload: function() {
    this.fetch({dataType: 'jsonp', jsonp: 'call'});
  }
});


>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
var IdeaView = Backbone.View.extend({

  el: '#idea',

<<<<<<< HEAD
  initialize: function(){
=======
  initialize: function() {
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

<<<<<<< HEAD
  render: function(){
    var message = this.model.get('this') + '<span> for </span> ' + this.model.get('that');
=======
  render: function() {
    var message = this.model.get('this') +' <span>for</span> '+ this.model.get('that');
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
    this.$('p').html(message);
  },

  events: {
<<<<<<< HEAD
    'click #idea-reload' : 'onReload'
=======
    'click #idea-reload': 'onReload'
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
  },

  onReload: function(evt) {
    this.model.reload();
  }
});

var idea = new IdeaModel();
<<<<<<< HEAD
var ideaView = new IdeaView({model: idea});

idea.fetch({dataType: 'jsonp', jsonp: 'call'});


=======
var ideaView = new IdeaView({model: idea});
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
