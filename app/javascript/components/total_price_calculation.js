import moment from "moment"

const indexFlat = document.querySelector('.index-flat');



const calcTotalPrice = (startDate, endDate) => {

  const startMoment = moment(startDate);
  const endMoment = moment(endDate);

  const rangeDate = endMoment.diff(startMoment, 'days');

  const pricePerDay = document.getElementById("price-per-day").dataset.price; // string

  const pricePerDayXof = document.getElementById("price-per-day-xof").dataset.price;

  const totalPrice = Number.parseInt(pricePerDay, 10) * rangeDate; // renvoie NaN
  const totalPriceXof = Number.parseInt(pricePerDayXof, 10) * rangeDate;

  const totalPriceBox = document.querySelector("#total-price");
  if (totalPrice > 0) {
    totalPriceBox.innerHTML = totalPrice
  } else {
    console.log(0);
  };

  const totalPriceXofBox = document.querySelector("#total-price-xof");
  if (totalPriceXof > 0) {
    totalPriceXofBox.innerHTML = totalPriceXof
  } else {
    totalPriceXofBox.innerHTML = console.log(0)
  }
};

export { calcTotalPrice };


if (indexFlat) {
    const searchStartDate = document.querySelector('.datepicker-query').value.split(' to ')[0];
    const searchEndDate = document.querySelector('.datepicker-query').value.split(' to ')[1];

    const searchStartMoment = moment(searchStartDate);
    const searchEndMoment = moment(searchEndDate);

    const searchRangeDate = searchEndMoment.diff(searchStartMoment, 'days');

    const searchPricesPerDay = document.querySelectorAll(".price-per-day-index");
    const searchPricesXofDay = document.querySelectorAll(".price-per-day-xof");

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

    searchPricesXofDay.forEach((price) => {

      const searchPricePerDay = price.dataset.price;
      const searchFlat = price.dataset.flat;

      const totalPriceSearch = Number.parseInt(searchPricePerDay, 10) * searchRangeDate;

      const matchPrices = document.querySelector(`.total-price-xof[data-flat*="${searchFlat}"]`);

      if (totalPriceSearch > 0) {
        matchPrices.innerHTML = totalPriceSearch
      } else {
        console.log(0);
      };
    })
}
