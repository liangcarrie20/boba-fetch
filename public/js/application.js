  var geocoder;
  var map;
  function initMap() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(37.774929, -122.419416);
    var mapOptions = {
      zoom: 14,
      center: latlng
    }
    map = new google.maps.Map(document.getElementById('map'), mapOptions);
    codeAddress();
  }

function codeAddress() {
  var address = document.getElementById('address').value;
  geocoder.geocode( {'address': address}, function(results, status) {
    if (status == 'OK') {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
          icon: 'https://s3.amazonaws.com/herokubobafetch/Boba-Fett-icon.png'
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

