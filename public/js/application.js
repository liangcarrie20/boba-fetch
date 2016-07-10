function initMap() {
  var latlng = new google.maps.LatLng(37.774929, -122.419416);
  var mapOptions = {
    zoom: 11,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById("map"), mapOptions);
}