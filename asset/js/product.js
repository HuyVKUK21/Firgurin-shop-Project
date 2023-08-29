const ammount_input =  document.querySelector('.ammount-input');
const ammount_add =  document.querySelector('.ammount-add');
const ammount_sub =  document.querySelector('.ammount-sub');
const img_list = document.querySelectorAll('.img-list');
const image_slide = document.querySelector('.image__slide');

a = 0;

img_list.forEach(e => {
    a++;
    if (a == 1) {
        e.addEventListener('click', () => {
            image_slide.style.transform = `translateX(-0px)`;
        })
    }
    if (a == 2) {
        e.addEventListener('click', () => {
            image_slide.style.transform = `translateX(-100%)`;
        })
    }
    if (a == 3) {
        e.addEventListener('click', () => {
            image_slide.style.transform = `translateX(-200%)`;
        })
    }
    if (a == 4) {
        e.addEventListener('click', () => {
            image_slide.style.transform = `translateX(-300%)`;
        })
    }
})

console.log(a);

i = 1;
ammount_input.value = i;

ammount_add.addEventListener('click', () => {
    i++;
    ammount_input.value = i;
});
ammount_sub.addEventListener('click', () => {
    if (i==1) {
    } else {
        i--;
    }
    ammount_input.value = i;
});
