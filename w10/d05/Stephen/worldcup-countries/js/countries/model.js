/*
* @Author: stephenstanwood
* @Date:   2014-06-27 12:42:39
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-27 13:12:04
*/

var Country = Backbone.Model.extend({
  defaults: {
    alpha2Code: '',
    name: '',
    isPlaying: false,
    isEliminated: false
  },

  toggleElimination: function() {
    isEliminated = !isEliminated;
  }

  togglePlaying: function() {
    isPlaying = !isPlaying;
  }
});

var CountryCollection = Backbone.Collection.extend({
  model: Country,
  url: 'http://restcountries.eu/rest/v1'
});
