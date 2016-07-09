var latLng = {lat: 37.774929, lng: -122.419416}

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: latLng,
    zoom: 11
  });
}
$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});