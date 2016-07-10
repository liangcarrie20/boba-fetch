function initMap() {
  // var geocoder = new google.maps.Geocoder;
  var latlng = new google.maps.LatLng(37.774929, -122.419416);
  var mapOptions = {
    zoom: 11,
    center: latlng
  }
  var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}