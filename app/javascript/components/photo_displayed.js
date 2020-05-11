const showFlat = document.getElementById('show-flat');


if (showFlat) {

  const photosDisplay = document.getElementById('photo-show-flat');
  const panelPhoto = document.querySelector('.display-photos-container');
  const blockShow = document.querySelector('.contenu-show');
  const closePhotos = document.querySelector('.close-photos');

  photosDisplay.addEventListener('click', (event) => {

    blockShow.classList.add('opacity');

    panelPhoto.classList.remove('d-none');

  })

  closePhotos.addEventListener('click', (event) => {

    blockShow.classList.remove('opacity');

    panelPhoto.classList.add('d-none');

  })

}
