import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr_query";

import { initMapbox } from '../plugins/init_mapbox';
import { calcTotalPrice } from '../components/total_price_calculation';

initMapbox();
calcTotalPrice();
