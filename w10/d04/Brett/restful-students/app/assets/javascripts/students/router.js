var StudentsRouter = Backbone.Router.extend({

  routes: {
    "students": "list",
    "students/:id": "detail"
  },

  clearView: function() {
    if (this.view) {
      this.view.remove();
    }
  },

  list: function() {
    this.clearView();
    this.view = new StudentListView({collection: studentCollection});
    this.view.render().appendTo("#students-container");
  },

  detail: function(id) {
    this.clearView();
    this.view = new StudentDetailView({model:studentCollection.get(id)});
    this.view.render().appendTo("#students-container");
  }
});

var router = new StudentsRouter();
Backbone.history.start();
