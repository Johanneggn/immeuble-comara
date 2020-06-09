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
  const days = document.querySelectorAll(".calday");
  const bookings = document.querySelectorAll(".card-user-booking");
  const clients = document.querySelectorAll(".client-info");


  days.forEach((day) => {
    const matchBookings = document.querySelectorAll(`.card-user-booking[data-date*="${day.dataset.date}"]`)

    bookings.forEach((booking) => {
    booking.classList.add("d-none");
    })
    day.addEventListener("click", (event) => {
      // const matchBookings = document.querySelectorAll(`.card-user-booking[data-date*="${day.dataset.date}"]`)
      bookings.forEach((booking) => {
        booking.classList.add("d-none");

      })
      matchBookings.forEach((matchBooking) =>{
        matchBooking.classList.remove("d-none");


      })
    });

    matchBookings.forEach((matchb) => {
      day.classList.add("green-actif-day");
    })
  });



  bookings.forEach((booking) => {
    const matchsBookingClient = document.querySelectorAll(`.client-info[data-booking="${booking.dataset.booking}"]`)

    clients.forEach((client) => {
      client.classList.add('d-none');
    });

    booking.addEventListener("click", (event) => {
      matchsBookingClient.forEach((matchBookingClient) => {
        matchBookingClient.classList.toggle("d-none");
      })
    })
  })

//   bookings.forEach((booking) => {
//     const matchsClient = document.querySelectorAll(`.client-info[data-booking*="${booking.dataset.booking}"]`)

//     clients.forEach((client) => {
//       client.classList.add('d-none');
//     });

//     booking.addEventListener("click", (event) => {

//       clients.forEach((client) => {
//         client.classList.remove('d-none');
//       });
//       matchsClient.forEach((matchClient) => {
//         matchClient.classList.remove('d-none');
//       })
//     })
// })

}
