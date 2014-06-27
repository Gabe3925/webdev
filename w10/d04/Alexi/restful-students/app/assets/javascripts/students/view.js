var StudentsListView = Backbone.View.extend({
  tagName: 'div',
  className: 'students-list',
  template: _.template($('#students-list').html()),

  render: function(){
    var rendered = this.template({});
    return this.$el.html(rendered);
  },

  events: {
    'submit' : 'createStudent'
  },

  createStudent: function(evt){
    evt.preventDefault();
    var name = this.$('[name="name"]').val();
    this.$('input').val('');

    this.collection.create({
      name: name
    });
  }
});

var view = new StudentsListView({ collection: studentsCollection})
  view.render().appendTo('#students-container')

  var StudentDetailView = Backbone.View.extend({
});
