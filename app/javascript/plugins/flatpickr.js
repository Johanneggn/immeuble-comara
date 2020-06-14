import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { calcTotalPrice } from '../components/total_price_calculation';
require("flatpickr/dist/themes/material_blue.css");

const bookFlat = document.querySelector(".booking-show-flat");
const newBook = document.querySelector(".user-new-booking");

if (bookFlat) {
    const startDateInput = document.getElementById("range_start");
    const endDateInput = document.getElementById("range_end");

    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "d/m/Y",
      dateFormat: "Y-m-d",
      minDate: "today",
      plugins: [new rangePlugin({ input: endDateInput})],
      disableMobile: true,
      onChange: (selectedDates, dateStr, instance) => {
        calcTotalPrice(selectedDates[0], selectedDates[1]);
      }
    });
}

if (newBook) {
    const startDateInput = document.getElementById("range_start");
    const endDateInput = document.getElementById("range_end");

    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "d/m/Y",
      dateFormat: "Y-m-d",
      minDate: "today",
      plugins: [new rangePlugin({ input: endDateInput})],
      disableMobile: true,
      onChange: (selectedDates, dateStr, instance) => {
        calcTotalPrice(selectedDates[0], selectedDates[1]);
      }
    });
}
