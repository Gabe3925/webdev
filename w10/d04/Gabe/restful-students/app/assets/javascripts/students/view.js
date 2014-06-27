//CREATES A STUDENT COLLECTION
var StudentListView = Backbone.View.extend({

  className: 'students-list',
  template: _.template($('#students-list').html()),

  render: function() {
    var rendered = this.template({collection: studentsCollection });
    return this.$el.html(rendered);
  }
});

//CREATES A STUDENT DETAIL VIEW FOR ONE STUDENT
var StudentDetailView = Backbone.View.extend({
  tagName: 'form',
  className: 'student-detail',
  template: _.template($('#student-detail').html()),

  render: function() {
    var rendered = this.template({collection: studentsCollection });
    return this.$el.html(rendered);
  }
});

var studentListView = new StudentListView({collection: studentsCollection});
//IF I RENDER THIS TO DOM, IT WILL BE SHOWING UP TWICE. ITS ALREADY GOING TO BE RENDERED INTO A DIV, WHICH THE CONSTRUCTOR MAKES BY DEFAULT.
// studentListView.render().appendTo('body');

//THIS PART CURRENTLY SHOWS ALL THE TIME-- IT SHOULD ONLY SHOW WHEN I CLICK ON A STUDENTS NAME (AND THUS GET THEIR ID) FROM THE STUDENTS COLLECTION.
var studentDetailView = new StudentDetailView({collection: studentsCollection});
studentDetailView.render().appendTo('body');
