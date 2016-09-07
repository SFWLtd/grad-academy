function togglePicturesVisibility() {
    $('.image').stop().delay(100).fadeToggle(500);
};

document.getElementById('hide-picture-button').onclick = togglePicturesVisibility;