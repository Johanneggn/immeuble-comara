const bookingWaiting = document.querySelector(".booking-waiting");
const calendar = document.querySelector(".calendar")

if (bookingWaiting) {
  const usersDisplay = document.querySelectorAll(".fa-user-circle");
  const infoClients = document.querySelectorAll(".card-booking-client");

  usersDisplay.forEach((userDisplay) =>{
   infoClients.forEach((infoClient) => {
    userDisplay.addEventListener("click", (event) => {
      const matchingBooking = userDisplay.getAttribute("data") === infoClient.getAttribute("data");
      if (matchingBooking === true) {
        infoClient.classList.toggle("d-none");
      }
     });
    });
  });
}

if (calendar) {
  const days = document.querySelectorAll(".calday")
  const bookingsStart = document.querySelectorAll(".date-booking")
  const actions = document.querySelectorAll(".card-user-booking")
  // const matchDay = day.textContent === start.textContent

  days.forEach((day) => {
    day.addEventListener("click", (event) => {
      // actions.classList.toggle("d-none");
    });
  });
}
