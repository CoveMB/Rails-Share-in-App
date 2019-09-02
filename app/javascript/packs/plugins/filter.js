import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import mapboxgl from 'mapbox-gl';
import { initMapbox, addMarkersToMap } from './mapbox';

const initFilter = () => {
  if (window.location.href.match(/\/$/)){
    document.addEventListener('DOMContentLoaded', function () {
      var mapElement = document.getElementById('map');
      var mapAndMarkers = initMapbox();
      var map = mapAndMarkers["map"];
      var markersOnMap = mapAndMarkers["markers"];
      console.log(markersOnMap);
      // Build date picker
      var date = document.querySelectorAll('.datepicker');
      var dateinstance = M.Datepicker.init(date);
      // Build events dropdown
      var elems = document.querySelectorAll('select');
      var instances = M.FormSelect.init(elems);
      instances.forEach(function (instance, i) {
        // Get html elemnt of dropdowns
        var selectOptions = instance.$selectOptions;
        instance.dropdownOptions.childNodes.forEach(function (optionHtml, index) {
          // Grab attributes value to add in HTML
          if (index != 0) {
            optionHtml.setAttribute("data-category", selectOptions[index].attributes[1].value);
          }
          // If interest category dropdown display next step if clicked and related interests
          if (i === 0) {
            optionHtml.addEventListener("click", (event) => {
              document.querySelector(".filter-arrow").style.display = "block";
              document.getElementById("interest-dropdown").style.display = "block";
              // Check if category is check or unchecked if
              if (event.target.parentElement.parentNode.parentNode.className === "selected" || event.target.parentElement.className === "selected") {
                document.querySelectorAll("#interest-dropdown > .select-wrapper > ul > li").forEach(function (interest) {
                  // If interest if from this category display block
                  if (interest.dataset.category == event.target.innerText) {
                    interest.style.display = "block";
                  }
                });
              } else if (event.target.parentElement.parentNode.parentNode.className != "selected" && event.target.parentElement.className != "selected") {
                document.querySelectorAll("#interest-dropdown > .select-wrapper > ul > li").forEach(function (interest){
                  if (interest.dataset.category == event.target.innerText) {
                    interest.style.display = "none";
                  }
                });
              }
            });
          }
          // If interest it is dropdown then display none to hide interests
          if (i === 1) {
            optionHtml.style.display = "none";
            optionHtml.addEventListener("click", (event) => {
              const interestsElement = Array.from(document.querySelectorAll("#interest-dropdown > .select-wrapper > ul > li")).filter((interest) => {
                return interest.className == "selected";
              });
              const interests = interestsElement.map((element) => {
                return element.innerText;
              });
              markersOnMap = updateMarkers(mapElement, map, markersOnMap, interests);
            });
          }
        });
      });
    });
  }
};

const updateMarkers = (mapElement, map, markersOnMap, interests) => {
  console.log(markersOnMap);
  markersOnMap.forEach((marker) => {
    marker.remove();
  });

  const newMarkers = JSON.parse(mapElement.dataset.markers).filter((marker) => {
    return marker["categories"].filter((interest) =>  interests.includes(interest)).length > 0;
  });

  return newMarkers.map((marker) => {
    const newMarker = new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      // .setPopup(popup)
      .addTo(map);
      return newMarker;
  });
};

export { initFilter };
