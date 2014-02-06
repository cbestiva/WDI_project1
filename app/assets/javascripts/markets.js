// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


function initialize() {

  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: 12,
    center: new google.maps.LatLng(37.754, -122.435),
  });

  var infowindow = new google.maps.InfoWindow();

  var marker, i;

  function showMarkers(map, filterByDay) {
    console.log(filterByDay);
    for (i = 0; i < gon.locations.length; i++) {
      if (filterByDay !== undefined) {
        eventObject
      } 
      else {
        marker = new google.maps.Marker({
        position: new google.maps.LatLng(gon.locations[i].lat, gon.locations[i].lng),
        map: map
        });
      }

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(gon.locations[i].name);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  }
  showMarkers(map);

    $("ul#select_day a").click(function(eventObject) {
      var dayOfWeek = eventObject.toElement.innerHTML;
      showMarkers(map, dayOfWeek);
    });
}


$(document).on('ready page:load', initialize);











