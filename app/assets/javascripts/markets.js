// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


function initialize() {

  var mapStyle = [
    {
        "featureType": "road",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "simplified"
            },
            {
                "lightness": 20
            }
        ]
    },
    {
        "featureType": "administrative.land_parcel",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "landscape.man_made",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "geometry",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "hue": "#a1cdfc"
            },
            {
                "saturation": 30
            },
            {
                "lightness": 49
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry",
        "stylers": [
            {
                "hue": "#f49935"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry",
        "stylers": [
            {
                "hue": "#fad959"
            }
        ]
    }
]

  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: 12,
    center: new google.maps.LatLng(37.754, -122.435),
    styles: mapStyle
  });

  var infowindow = new google.maps.InfoWindow();

  var marker, i, markers = [];


  function showMarkers(map) {
    var filterByDay = $("ul#select_day").attr("data-filterDay");

    // clear all markers off the map
    // by setting each marker's map to null
    markers.forEach(function(marker) {
      marker.setMap(null);
    });

    // default locatins are all locations
    var locations = gon.locations;
    if (filterByDay) {
      
      markers = [];
      // when filter is passed in
      // filter the locations such
      // that the day matches the filter day 
      // that the user had selected
      locations = locations.filter(function(location) {
         console.log("location.day", location.day)
         return location.day.indexOf(filterByDay) !== -1;
      });
    }
    // iterate through the filtered day array
    for (i = 0; i < locations.length; i++) {
      // add a marker for each to the map
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
        map: map
      });
      // and push it into the array
      markers.push(marker);

      // displays the infowindow with
      // the farmers market's name
      // for each location
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent('<a href="/sf_farmers_market_guide/' + locations[i].id +'">' + locations[i].name + '</a>');
          infowindow.open(map, marker);
        }
      })(marker, i));
    };
  };
  
  showMarkers(map);

  $("ul#select_day a").click(function(eventObject) {
    eventObject.preventDefault();
    var dayOfWeek = eventObject.toElement.innerHTML;
    $("ul#select_day").attr('data-filterDay', dayOfWeek);
    showMarkers(map);
  });
}


$(document).on('ready page:load', initialize);











