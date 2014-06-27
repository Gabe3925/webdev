var StudentListView = Backbone.View.extend({
  tagName: "div",
  className: "students-list",

  initialize: function() {
    this.listenTo(this.collection, "add remove sync change", this.render);
    this.render();
  },

  template: _.template($("#students-list").html()),

  render: function() {
    var rendered = this.template({collection: this.collection});
    return this.$el.html(rendered);
  }
});

var StudentDetailView = Backbone.View.extend({
  tagName: "div",
  className: "student-detail",

  template: _.template($("#student-detail").html()),

  render: function() {
    var rendered = this.template(this.model.toJSON());
    return this.$el.html(rendered);
  }
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "createStudent"
  },

  createStudent: function(event) {
    event.preventDefault();
    var name = this.$("[name='name']").val();
    this.el.reset();

    this.collection.create({
      name: name
    });

  }
});

studentCollection.fetch().then(function() {
  var student = new StudentDetailView()
  var addStudentView = new FormView({collection: studentCollection});

});


