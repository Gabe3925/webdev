var offset = 0;

function search(keyword) {
  var apiPath = 'http://api.giphy.com/v1/gifs/search?api_key=dc6zaTOxFJmzC&q=';
  apiPath += escape(keyword);
  apiPath += '&offset=' + offset;

  $.getJSON(apiPath).then(function(gifs){
    var html = '';

    for(var i = 0; i < gifs.data.length; i++){
      offset += 1;
      html += '<img src="' + gifs.data[i].images.original.url + '" alt="" data-index="'+offset+'">'
    }

    $("body").append(html);
  });
}

$('#search').on('submit', function(evt){
  evt.preventDefault();

  var keyword = $('#keyword').val();
  offset = 0;

  search();
});

$(window).on('scroll', _.debounce(function(){
  if ($(window).scrollTop() + $(window).height() >= $(document).height()){
    search();
  }
}, 200));

$('body').on('click', 'img', function(){
  $(this).toggleClass('big');
});
