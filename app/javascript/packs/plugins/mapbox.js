import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');
const allMarkers = [];

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10',
    options: {
      marker: true
    },
  });
};

const addEventListener = () => {
  document.querySelector(".mapboxgl-ctrl-geocoder--input").addEventListener("keydown", (event) => {
    if (event.keyCode == 13) {
      window.scrollTo({
        top: 930,
        left: 0,
        behavior: 'smooth'
      });
    }
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '22px';
    element.style.height = '26px';

    const newMarker = new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
      allMarkers.push(newMarker);
  });
};

const addGeolocationControl = (map) => {
  map.addControl(new mapboxgl.GeolocateControl({
    positionOptions: {
      enableHighAccuracy: true
    },
    trackUserLocation: true
  }));
};

const fitMapToMarkers = (map, markers) => {
  if (markers.length === 0) { return; }

  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 14 });
};

const addGeoCoder = (map) => {
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl
  });
  document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
};

const initMapbox = (markersForMap = 0) => {
  if (mapElement) {
    var map = buildMap();
    if (markersForMap == 0){
      var markers = JSON.parse(mapElement.dataset.markers);
    } else {
      var markers = markersForMap;
    }
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    addGeolocationControl(map);
    addGeoCoder(map);
    addEventListener();
  }
  return {
    map: map,
    markers: allMarkers,
  };
};

export { initMapbox, addMarkersToMap };
