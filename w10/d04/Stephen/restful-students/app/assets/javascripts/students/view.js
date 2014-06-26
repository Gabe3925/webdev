/*
* @Author: stephenstanwood
* @Date:   2014-06-26 15:05:02
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-26 17:13:49
*/

var StudentListView = Backbone.View.extend({
  tagName: 'div',
  className: 'students-list',
  template: _.template( $( '#students-list' ).html() ),

  render: function() {
    var rendered = this.template({ collection: this.collection });

    return this.$el.html( rendered );
  }
});

var StudentDetailView = Backbone.View.extend({
  tagName: 'form',
  className: 'student-detail',
  template: _.template( $( '#student-detail' ).html() ),

  render: function() {
    this.collection.fetch();
    var rendered = this.template( this.model.toJSON() );
    return this.$el.html( rendered );
  }
});
