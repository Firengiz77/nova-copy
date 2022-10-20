new Swiper('.swiper', {
    slidesPerView: 2,
    spaceBetween: 30,
    navigation: {
        prevEl: '.swiper-button-prev-custom',
        nextEl: '.swiper-button-next-custom'
    },
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
        dynamicBullets: true,
        // renderBullet: function (index, className) {
        //     return '<span class="' + className + '">' + (index + 1) + '<span>';
        // },
        // type: 'fraction',
    },
    breakpoints: {
        320: {
            slidesPerView: 1
        },
        345: {
            slidesPerView: 1.3,
            spaceBetween: 15
        },
        375: {
            slidesPerView: 1.5,
            spaceBetween: 15
        },
        425: {
            slidesPerView: 1.7,
            spaceBetween: 15
        },
        525: {
            slidesPerView: 2,
            spaceBetween: 15
        },
    }
});