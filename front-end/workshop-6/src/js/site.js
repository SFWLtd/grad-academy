function togglePicturesVisibility() {
    $('.image').stop().delay(100).fadeToggle(500, function () {
        $('#hide-picture-button').text(($('.image').is(':visible')) ? "Hide pictures" : "Show pictures");
    });
};

document.getElementById('hide-picture-button').onclick = togglePicturesVisibility;