import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { calcTotalPrice } from '../components/total_price_calculation';
require("flatpickr/dist/themes/material_green.css");

const bookFlat = document.querySelector(".booking-show-flat");


if (bookFlat) {
flatpickr("#range_start", {
  altInput: true,
  altFormat: "d/m/Y",
  dateFormat: "Y-m-d",
  plugins: [new rangePlugin({ input: "#range_end"})],
  onChange: (selectedDates, dateStr, instance) => {
    calcTotalPrice(selectedDates[0], selectedDates[1]);
  }
});
}
