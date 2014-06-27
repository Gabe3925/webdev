/*
* @Author: stephenstanwood
* @Date:   2014-06-27 12:42:39
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-27 13:27:31
*/

var CountryDetailView = Backbone.View.extend({
  tagName: 'div',
  className: 'country-detail',

  events: {
    'change [name="eliminated"]' : 'onElimination',
    'change [name="playing"]' : 'onPlaying'
  },

  onElimination: function() {
    this.model.toggleElimination();
    var status = this.model.isEliminated;
    $( '[name="eliminated"]' ).prop( 'checked', status );
  },

  onPlaying: function() {
    this.model.togglePlaying();
    var status = this.model.isPlaying;
    $( '[name="eliminated"]' ).prop( 'checked', status );
  },

  template: _.template( $( '#country-detail' ).html() ),

  render: function() {
    var rendered = this.template( this.model.toJSON() );
    return this.$el.html( rendered );
  }
});

var CountryListItemView = Backbone.View.extend({
  tagName: 'li',
  className: 'country',

  initialize: function() {
    this.listenTo( this.model, 'change', this.render );
    this.render();
  },

  render: function() {
    var html = '<a href="' + this.model.alpha2Code + '"' + this.model.name + '</a>';
    this.$el.html( html );

    if ( this.model.isPlaying ) {
      this.$el.addClass( 'isPlaying' );
    }

    if ( this.model.isEliminated ) {
      this.$el.addClass( 'isEliminated' );
    }
  }
});

var CountryListView = Backbone.View.extend({
  el: '#countries-list',

  initialize: function() {
    this.listenTo( this.collection, 'sync reset', this.render );
  },

  render: function() {
    this.$el.clear();

    for ( var i = 0, n = this.collection.length; i < n; i++ ) {
      var view = new CountryListItemView({ model : country });
      this.$el.append( view.el );
    }
  }
});


