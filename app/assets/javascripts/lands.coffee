# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
drawDoxes = (latLng,map) ->
  lat = (parseInt(latLng.lat()/5))*5-2.5
  lng = (parseInt(latLng.lng()/5))*5+2.5
  new google.maps.Rectangle
    strokeColor: '#FF0000'
    strokeOpacity: 0.8
    strokeWeight: 2
    fillColor: '#FF0000'
    fillOpacity: 0.35
    map: map
    bounds:
      north: lat+2.5
      south: lat-2.5
      east: lng+2.5
      west: lng-2.5
  $('.add').append("<span id='latlng'>["+lat.toString()+","+lng.toString()+"]  </span>");
