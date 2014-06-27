/*
* @Author: stephenstanwood
* @Date:   2014-06-27 12:42:39
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-27 13:36:24
*/

var CountriesRouter = Backbone.Router.extend({
  routes: {
    ':id': 'detail'
  },

  clearView: function() {
    if ( this.view ) {
      this.view.remove();
    }
  },

  detail: function( alpha2Code ) {
    this.clearView();
    var m = countriesCollection.where({ alpha2Code: alpha2Code });

    this.view = new CountryDetailView({ model: m });

    this.view.render().appendTo( '#predator-container' );
  }
});
