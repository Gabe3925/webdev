// API: http://itsthisforthat.com/api.php?json
// PARAMS: {dataType: 'jsonp', jsonp: 'call'}

<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
=======
// sets up constructor function for creating instances of IdeaModel
>>>>>>> 4fcf81628b69a94ba5f338369053da594cf0bbf7
var IdeaModel = Backbone.Model.extend({

  // sets default values for any given instance of IdeaModel
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

  // the 'url' attribute is used by the .fetch method to sync with an external API
  url: 'http://itsthisforthat.com/api.php?json',

  reload: function() {
    // fetch makes an ajax call to the address specified by the 'url' attribute.
    // We pass in 'jsonp' as the dataType to handle cross-origin request issues
    this.fetch({dataType: 'jsonp', jsonp: 'call'});
  }
});

<<<<<<< HEAD

>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
=======
// sets up constructor function for creating idea views
>>>>>>> 4fcf81628b69a94ba5f338369053da594cf0bbf7
var IdeaView = Backbone.View.extend({
  // the DOM element to which the view attaches itself
  el: '#idea',

<<<<<<< HEAD
<<<<<<< HEAD
  initialize: function(){
=======
  initialize: function() {
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
=======
  // initialize is invoked by default when view is instantiated
  initialize: function() {
    // we tell the view to rerender anytime the its model emits a change event
>>>>>>> 4fcf81628b69a94ba5f338369053da594cf0bbf7
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

<<<<<<< HEAD
  render: function(){
    var message = this.model.get('this') + '<span> for </span> ' + this.model.get('that');
=======
  render: function() {
    var message = this.model.get('this') +' <span>for</span> '+ this.model.get('that');
<<<<<<< HEAD
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
=======
    // finds any child <p> tags within the view's designated 'el' and sets their html
>>>>>>> 4fcf81628b69a94ba5f338369053da594cf0bbf7
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
<<<<<<< HEAD
var ideaView = new IdeaView({model: idea});

idea.fetch({dataType: 'jsonp', jsonp: 'call'});


=======
var ideaView = new IdeaView({model: idea});
>>>>>>> ac24a3e832b6fc7540dd90620a5fc5ac3677128e
=======
// when you instantiate a view, you'll almost always pass it a model or collection
// so that it has access to dynamic data
var ideaView = new IdeaView({ model: idea });
>>>>>>> 4fcf81628b69a94ba5f338369053da594cf0bbf7
