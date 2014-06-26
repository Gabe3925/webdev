/*
* @Author: stephenstanwood
* @Date:   2014-06-26 12:05:36
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-26 12:26:41
*/

var PredatorListView = Backbone.View.extend({
  tagName: 'ul',
  className: 'predator-list',

  template: _.template( $( '#predator-list' ).html() ),

  render: function() {
    var rendered = this.template();
    return this.$el.html( rendered );
  }
});

new PredatorListView().render().appendTo( '#predator-container' );
