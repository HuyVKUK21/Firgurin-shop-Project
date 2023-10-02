const button = document.querySelector('.button');
const mobile__list = document.querySelector('.navbar__mobile');

const product__mobile = document.querySelector('.product__drop__mobile');
const nav__mobile = document.querySelector('.nav__product__mobile');

const message = document.createElement('div');
const btn__add = document.querySelector('.messagepop');

message.innerHTML = `
                <div class="add--message">
                    <i class="fa-solid fa-bag-shopping"></i>
                    Thêm vào giỏ hàng thành công
                </div>
`;

button.addEventListener('click', () => {
    if (button.classList.contains('is-opened')) {
        button.classList.remove('is-opened');
        mobile__list.classList.remove('checked');
    } else {
        button.classList.add('is-opened');
        mobile__list.classList.add('checked');
    }
})

nav__mobile.addEventListener('click', () => {
    if (product__mobile.classList.contains('checked')) {
        product__mobile.classList.remove('checked');
    } else {
        product__mobile.classList.add('checked');
    }
})

btn__add.addEventListener('click', () => {
    document.body.appendChild(message);
})

