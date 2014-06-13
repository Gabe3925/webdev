function initialize() {
  var location = new google.maps.LatLng(-34.139, 150.699);
  var newMarker = new google.maps.Marker({
    position: location,
    map: map
  });

  google.maps.event.addListener(map, 'click', function(event) {
  
  $.ajax({
    url: "/index"
    type: "GET"
    
  })
});

  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&' +
      'callback=initialize';
  document.body.appendChild(script);
}

window.onload = loadScript;


