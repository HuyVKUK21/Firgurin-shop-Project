const mobile_collect = document.querySelectorAll('.mobile-collect__click');
const mobile_filter = document.querySelectorAll('.mobile-filter__click');
const categ__box = document.querySelectorAll('.categ__box');
const filter__box = document.querySelectorAll('.filter__box');

const filter__brand = document.querySelector('.filter__brand');
const filter__brand__detail = document.querySelector('.filter__brand--detail');

const filter__price = document.querySelector('.filter__price');
const filter__price__detail = document.querySelector('.filter__price--detail');

const filter__scale = document.querySelector('.filter__scale');
const filter__slace__detail = document.querySelector('.filter__slace--detail');


const mq = window.matchMedia("(min-width: 840px)")
mq.addListener(() =>{
    if (mq.matches) {
        button.classList.remove('is-opened');
        mobile__list.classList.remove('checked');
        filter__brand__detail.classList.remove('checked');
        filter__price__detail.classList.remove('checked');
        filter__slace__detail.classList.remove('checked');
        categ__box.forEach(el => {
                el.classList.remove('checked');
        })
        filter__box.forEach(el => {
                el.classList.remove('checked');})
        setTimeout(() => {
            list_content.style.display = 'none';
        }, 200);
    }
})

filter__brand.addEventListener('click', () => {
    if (filter__brand__detail.classList.contains('checked')) {
        filter__brand__detail.classList.remove('checked');
    } else {
        filter__brand__detail.classList.add('checked');
    }
})

filter__price.addEventListener('click', () => {
    if (filter__price__detail.classList.contains('checked')) {
        filter__price__detail.classList.remove('checked');
    } else {
        filter__price__detail.classList.add('checked');
    }
})

filter__scale.addEventListener('click', () => {
    if (filter__slace__detail.classList.contains('checked')) {
        filter__slace__detail.classList.remove('checked');
    } else {
        filter__slace__detail.classList.add('checked');
    }
})

mobile_collect.forEach(e => {
    e.addEventListener('click', () => {
        categ__box.forEach(el => {
            if (el.classList.contains('checked')) {
                el.classList.remove('checked');
            } else {
                el.classList.add('checked');
            }
        })
    })
})

mobile_filter.forEach(e => {
    e.addEventListener('click', () => {
        filter__box.forEach(el => {
            if (el.classList.contains('checked')) {
                el.classList.remove('checked');
            } else {
                el.classList.add('checked');
            }
        })
    })
})