import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr_query";
import "../components/bookings_treatement"
import "../components/photo_displayed"

import { initMapbox } from '../plugins/init_mapbox';
import { calcTotalPrice } from '../components/total_price_calculation';

initMapbox();
calcTotalPrice();
