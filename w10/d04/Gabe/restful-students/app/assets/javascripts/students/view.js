var StudentListView = Backbone.View.extend({

  className: 'students-list',
  template: _.template($('#students-list').html()),

  render: function() {
    var rendered = this.template({collection: studentsCollection });
    return this.$el.html(rendered);
  }
});




// var StudentDetailView = Backbone.View.extend({
//   tagName: 'form',
//   className: 'student-detail',
//   template: _.template($('#student-detail').html()),

//   render: function() {
//     var rendered = this.template(this.model.toJSON());
//     return this.$el.html(rendered);
//   }
// });

var studentListView = new StudentListView({collection: studentsCollection});
studentListView.render().appendTo('body');
