const ammount_input =  document.querySelector('.ammount-input');
const ammount_add =  document.querySelectorAll('.ammount-add');
const ammount_sub =  document.querySelectorAll('.ammount-sub');

const item = document.querySelectorAll('.cart__item');
const ammount = document.querySelector('.ammount');

a = 0;

item.forEach(() => {
    a++;
    console.log(a);
})

ammount.textContent = a;

i = 1;
ammount_input.value = i;

ammount_add.forEach(e => {
    e.addEventListener('click', () => {
        i++;
        ammount_input.value = i;
    });
})


ammount_sub.addEventListener('click', () => {
    if (i==1) {
    } else {
        i--;
    }
    ammount_input.value = i;
});
