 const newFlat = document.querySelector('.new-flat');

if (newFlat) {
  const partnerFlat = document.getElementById("flat_belonging_false");
  const comaraFlat = document.getElementById("flat_belonging_true");

  const geolocation = document.querySelector('.geolocation');

  partnerFlat.addEventListener("click", (event) => {
    geolocation.classList.remove("d-none");
  });

  comaraFlat.addEventListener("click", (event) => {
    geolocation.classList.add("d-none");
  });
}

