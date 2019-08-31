import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from './plugins/mapbox';
import { initDetailsToggle } from './plugins/init_details_toggle';
import { initFilter } from './plugins/filter';

initMapbox();
initDetailsToggle();
initFilter();
