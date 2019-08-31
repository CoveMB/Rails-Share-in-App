import { initMapbox } from './mapbox';

// const markers = JSON.parse(mapElement.dataset.markers);
const mapElement = document.getElementById('map');
const mapElements = initMapbox();
const map = mapElements["map"];
const markers = mapElements["markers"];
console.log(markers);

const initFilter = () => {
  document.addEventListener('DOMContentLoaded', function () {
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

              markers.forEach((marker) => {
                marker.remove();
              });



              document.querySelectorAll("#interest-dropdown > .select-wrapper > ul > li").forEach(function (interest) {
                // If interest if from this category display block
                if (interest.dataset.category == event.target.innerText) {
                  interest.style.display = "block";
                }
              });
            } else if (event.target.parentElement.parentNode.parentNode.className != "selected" && event.target.parentElement.className != "selected") {
              if (interest.dataset.category == event.target.innerText) {
                interest.style.display = "none";
              }
            }
          });
        }
        // If interest it is dropdown then display none to hide interests
        if (i === 1) {
          optionHtml.style.display = "none";
        }
      });
    });
  });
};

export { initFilter };
