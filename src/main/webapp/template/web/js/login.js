const login = document.querySelectorAll('.login-btn');
const register = document.querySelector('.register-btn');
const trans = document.querySelector('.transit');
const trans2 = document.querySelector('.trans2');
const trans3 = document.querySelector('.trans3');
const login_box = document.querySelector('.login__part');
const register_box = document.querySelector('.register__part')
const box = document.querySelector('.box');

const login_btn = document.querySelector('.login--btn');
const login_user = document.querySelector('.login--user');
const login_pass = document.querySelector('.login--pass');

const regis_btn =document.querySelector('.regis--btn');

const forgot__btn =document.querySelector('.forgot__btn');
const forgot__part =document.querySelector('.forgot__part');


function rando() {
    i = Math.floor(Math.random() * 100);
    if (i % 11 == 0) {
        trans.style.backgroundImage = "url(https://media.tenor.com/1OWgaienpEcAAAAM/black-guy-crying.gif)";
        trans2.style.backgroundImage = "url(https://media.tenor.com/1OWgaienpEcAAAAM/black-guy-crying.gif)"
    }
    if (i % 11 != 0) {
        trans.style.backgroundImage = "url(https://media.tenor.com/WrOlPBLlU9wAAAAC/anime-rikka-finger-spin.gif)";
        trans2.style.backgroundImage = "url(https://media.tenor.com/WrOlPBLlU9wAAAAC/anime-rikka-finger-spin.gif)"
    }
}

register.addEventListener('click', () => {
    trans.style.display = 'block';
    trans2.style.display = 'none';
    trans3.style.display = 'none';
    box.style.transform = "translateY(-520px)"; 
    rando();
    // login_box.style.animation = "hide 0.2s 0.2s forwards"
    // register_box.style.animation = "show 0.5s 0.2s forwards"
})

login.forEach(e => {
    e.addEventListener('click', () => {
        trans2.style.display = 'block';
        trans.style.display = 'none';
        trans3.style.display = 'none';
        box.style.transform = "translateY(0px)";
        rando();
        // login_box.style.animation = "show 0.2s 0.2s forwards"
        // register_box.style.animation = "hide 0.1s 0.2s forwards"
    })
})

forgot__btn.addEventListener('click', () => {
    trans2.style.display = 'none';
    trans3.style.display = 'block';
    trans.style.display = 'none';
    box.style.transform = "translateY(-1010px)";
    rando();
    // login_box.style.animation = "show 0.2s 0.2s forwards"
    // register_box.style.animation = "hide 0.1s 0.2s forwards"
})
