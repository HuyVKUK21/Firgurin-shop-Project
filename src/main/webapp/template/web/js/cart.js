// const ammount_input =  document.querySelectorAll('.ammount-input');
// const ammount_add =  document.querySelectorAll('.ammount-add');
// const ammount_sub =  document.querySelectorAll('.ammount-sub');

var inc = document.getElementsByClassName('ammount-add');
var dec = document.getElementsByClassName('ammount-sub');

for(i = 0; i < inc.length; i++) {
    var btn = inc[i];
    btn.addEventListener('click', () => {
        var btnClicked = event.target;
        var input = btnClicked.parentElement.children[1];
        var inputValue = input.value;
        var newValue = parseInt(inputValue) + 1;
        // console.log(newValue);
        input.value = newValue;
    })
}

for(i = 0; i < dec.length; i++) {
    var btn = dec[i];
    btn.addEventListener('click', () => {
        var btnClicked = event.target;
        var input = btnClicked.parentElement.children[1];
        var inputValue = input.value;
        if (parseInt(inputValue) >= 2) {
            var newValue = parseInt(inputValue) - 1;
            input.value = newValue;
        }
    })
}

const item = document.querySelectorAll('.cart__item');
const ammount = document.querySelector('.ammount');

a = 0;

item.forEach(() => {
    a++;
    // console.log(a);
})

ammount.textContent = a;