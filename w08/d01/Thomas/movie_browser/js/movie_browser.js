// API Docs at:
// http://www.omdbapi.com

var keyword = ''
$('#movie-select').hide();
function search(keyword) {
  var apiPath = 'http://www.omdbapi.com/?s=' + escape(keyword);
  $.getJSON(apiPath).then(function(response) {

//why does it not seem to matter if I store an initial value in titles?
    var titles = '';

    for (var i = 0; i < response.Search.length; i++) {
      titles += ['<option>', response.Search[i].Title, '</option>'].join('');
    }
    $('#movie-select').append(titles);
  });
}



$('#search').on('submit', function(evt) {
  evt.preventDefault();
  keyword = $('#movie-search').val();
  $('#movie-select').show();
  search(keyword);
});

$('#movie-select').on('change', function(evt) {
  evt.preventDefault();
  var userChoice = $('#movie-select').val();
  console.log(userChoice);
});
