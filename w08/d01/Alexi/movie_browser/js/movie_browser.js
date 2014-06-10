// API Docs at: 
// http://www.omdbapi.com
//  http://www.omdbapi.com/?s=True%Grit
var keyword = '';

function search(keyword) {
  //var searchType = $("#search-type").val();
  apiPath = 'http://www.omdbapi.com/?s=' + escape(keyword);
  
  $.getJSON(apiPath).then(function(results) {
    var titles = '';
    console.log(results);
    for (var i=0; i < results.Search.length; i++) {
      titles += '<option>' + results.Search[i].Title + '</option>';
    } 
    $("#movie-select").append(titles);
    // $("#option-value").html("Hello");
        //--> couldn't get it to work
  });
}

function display(keyword) {
  //var searchType = $("#search-type").val();
  apiPath = 'http://www.omdbapi.com/?t=' + escape(keyword);
  
  $.getJSON(apiPath).then(function(results) {
    console.log(results);
    var poster = '<img src=' + results.Poster + '">'
    var title = results.Title;
    $("#movie-detail").append(title).css({ "size": "40px" });
    // --> Poster removes title for some reason...
    $("#movie-detail").html(poster).css({ "float": "right" });


  });
}

$('#search').on('submit', function(evt) {
  evt.preventDefault();
  keyword = $('#movie-search').val();
  search(keyword);
});

$('#movie-select').on('change', function(evt) {
  evt.preventDefault();
  keyword = $('#movie-select').val();
  display(keyword); 
})

