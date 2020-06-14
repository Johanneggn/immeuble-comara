import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
require("flatpickr/dist/themes/material_green.css");

const indexSearchBar = document.querySelector(".index-show-search-bar");
const homeSearchBar = document.querySelector(".home-search-bar");

if (indexSearchBar) {
  const startDate = document.querySelector(".datepicker-query")
  //.flatpickr({
  //   minDate: "today",
  //   altInput: true,
  //   altFormat: "d/m/Y",
  //   dateFormat: "Y-m-d",
  // });
  const endDate = document.querySelector(".end-date-query")
  //.flatpickr({
  //   minDate: "today",
  //   altInput: true,
  //   altFormat: "d/m/Y",
  //   dateFormat: "Y-m-d",
  // });


  flatpickr(startDate, {
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    disableMobile: true,
    plugins: [new rangePlugin({ input: endDate})]
  });

}

if (homeSearchBar) {

  const startDate = document.querySelector(".datepicker-query")
  //.flatpickr({
  //   minDate: "today",
  //   altInput: true,
  //   altFormat: "d/m/Y",
  //   dateFormat: "Y-m-d",
  // });
  const endDate = document.querySelector(".end-date-query")
  //.flatpickr({
  //   minDate: "today",
  //   altInput: true,
  //   altFormat: "d/m/Y",
  //   dateFormat: "Y-m-d",
  // });


  flatpickr(startDate, {
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    disableMobile: true,
    plugins: [new rangePlugin({ input: endDate})]
  });

}






