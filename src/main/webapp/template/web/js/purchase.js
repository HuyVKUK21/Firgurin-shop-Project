const option1 = document.querySelector('.option1');
const option2 = document.querySelector('.option2');
const option3 = document.querySelector('.option3');

const option1_open = document.querySelector('.option1--open');
const option2_open = document.querySelector('.option2--open');
const option3_open = document.querySelector('.option3--open');

const btn1 = document.querySelector('.btn1');
const btn2 = document.querySelector('.btn2');
const btn3 = document.querySelector('.btn3');

option1.addEventListener('click', () => {
    option1_open.style.display = 'block';
    option2_open.style.display = 'none';
    option3_open.style.display = 'none';

    btn1.style.display = 'block';
    btn2.style.display = 'none';
    btn3.style.display = 'none';
})

option2.addEventListener('click',() => {
    option1_open.style.display = 'none';
    option2_open.style.display = 'block';
    option3_open.style.display = 'none';

    btn1.style.display = 'none';
    btn2.style.display = 'block';
    btn3.style.display = 'none';
})

option3.addEventListener('click',() => {
    option1_open.style.display = 'none';
    option2_open.style.display = 'none';
    option3_open.style.display = 'block';

    btn1.style.display = 'none';
    btn2.style.display = 'none';
    btn3.style.display = 'block';
})