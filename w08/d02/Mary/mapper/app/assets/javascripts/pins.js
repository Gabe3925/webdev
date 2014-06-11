var map = ''
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)};
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  loadPins();
  bindLocationToPin();

}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&' +'callback=initialize';
  document.body.appendChild(script);
}

window.onload = loadScript

function createPin(lat,lng) {
  var location = new google.maps.LatLng(lat, lng);
  var newMarker = new google.maps.Marker({
    position: location,
    map: map
  });
}

function loadPins() {
  $.ajax({
    url: '/pins',
    type: 'get',
    dataType: 'json'
    }).fail( function(d, textStatus, error) {
        console.error("getJSON failed, status: " + textStatus + ", error: "+error)
    })
  // .then(function(pins) {
  //   console.log('hello')
  //   for (var i = 0; i < pins.length; i++) {
  //     console.log("hey")
  //     createPin(pins[i].latitude,pins[i].longitude)
  //   };
  // });
}

function bindLocationToPin() {
  google.maps.event.addListener(map, 'click', function(event) {
    var lat = event.latLng.k;
    var lng = event.latLng.A;
      $.ajax({
        url: '/pins',
        type: 'post',
        dataType: 'jsonp',
        data: {pin: {latitude: lat, longitude: lng}}
      }).then(createPin)
  });
}




