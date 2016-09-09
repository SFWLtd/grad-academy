function togglePicturesVisibility() {
    var pictureElements = document.getElementsByClassName('image');
    for (var i = 0; i < pictureElements.length; i++) {
        var element = pictureElements[i];
        var isVisible = element.offsetWidth > 0 || element.offsetHeight > 0;
        if (isVisible) {
            element.style.display = 'none';
        }
        else {
            element.style.display = 'inline-block';
        }
    }
};

document.getElementById('hide-picture-button').onclick = togglePicturesVisibility;