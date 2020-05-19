import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
require("flatpickr/dist/themes/material_green.css");

const indexSearchBar = document.querySelector(".index-show-search-bar");
const homeSearchBar = document.querySelector(".home-search-bar");

if (indexSearchBar) {

  const startDate = $(".datepicker-query").flatpickr({
    minDate: "today",
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
  });
  const endDate = $(".end-date-query").flatpickr({
    minDate: "today",
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
  });
}

if (homeSearchBar) {

  const startDate = $(".datepicker-query").flatpickr({
    minDate: "today",
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
  });
  const endDate = $(".end-date-query").flatpickr({
    minDate: "today",
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
  });
}
