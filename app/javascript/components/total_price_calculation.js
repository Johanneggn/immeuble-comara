import moment from "moment"

const indexFlat = document.querySelector('.index-flat');



const calcTotalPrice = (startDate, endDate) => {

  const startMoment = moment(startDate);
  const endMoment = moment(endDate);

  const rangeDate = endMoment.diff(startMoment, 'days');

  const pricePerDay = document.getElementById("price-per-day").dataset.price; // string

  const totalPrice = Number.parseInt(pricePerDay, 10) * rangeDate; // renvoie NaN

  const totalPriceBox = document.querySelector("#total-price");
  if (totalPrice > 0) {
    totalPriceBox.innerHTML = totalPrice
  } else {
    console.log(0);
  };
};

export { calcTotalPrice };


if (indexFlat) {
    const searchStartDate = document.querySelector('.datepicker-query').value;
    const searchEndDate = document.querySelector('.end-date-query').value;

    const searchStartMoment = moment(searchStartDate);
    const searchEndMoment = moment(searchEndDate);

    const searchRangeDate = searchEndMoment.diff(searchStartMoment, 'days');

    const searchPricesPerDay = document.querySelectorAll(".price-per-day-index");

    searchPricesPerDay.forEach((price) => {

      const searchPricePerDay = price.dataset.price;
      const searchFlat = price.dataset.flat;

      const totalPriceSearch = Number.parseInt(searchPricePerDay, 10) * searchRangeDate;

      const matchPrices = document.querySelector(`.total-price[data-flat*="${searchFlat}"]`);

      if (totalPriceSearch > 0) {
        matchPrices.innerHTML = totalPriceSearch
      } else {
        console.log(0);
      };

    })
}
