import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
require("flatpickr/dist/themes/material_green.css");

const indexSearchBar = document.querySelector(".index-show-search-bar");
const homeSearchBar = document.querySelector(".home-search-bar");

if (indexSearchBar) {

  const startDate = $(".datepicker-query").flatpickr({
    minDate: "today",
    // dateFormat: "d/m/Y"
  });
  const endDate = $(".end-date-query").flatpickr({
    minDate: "today",
    // dateFormat: "d/m/Y"
  });
}

if (homeSearchBar) {
  const startDate = $(".datepicker-query").flatpickr({
    minDate: "today",
    // dateFormat: "d/m/Y"
  });
  const endDate = $(".end-date-query").flatpickr({
    minDate: "today",
    // dateFormat: "d/m/Y"
  });
}
