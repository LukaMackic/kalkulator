function navSlide() {
    var burger = document.querySelector('.burger');
    var menu = document.querySelector('.menu');
    var links = document.querySelectorAll('.menu li');

    //Toggle Nav
    burger.onclick = function () {
        menu.classList.toggle('nav-active');

        //Animate links
        links.forEach((link, index) => {
            if (link.style.animation) {
                link.style.animation = '';
            } else {
                link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + .3}s`;
            }

        });

        //burger animation
        burger.classList.toggle('toggle');

    }


}
navSlide();