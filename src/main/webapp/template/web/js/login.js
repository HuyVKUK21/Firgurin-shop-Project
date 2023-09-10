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
const regis_user =document.querySelector('.regis--user');
const regis_pass =document.querySelector('.regis--pass');
const regis_pass2 =document.querySelector('.regis--pass2');
const regis_gmail =document.querySelector('.regis--gmail');

const forgot__btn =document.querySelector('.forgot__btn');
const forgot__part =document.querySelector('.forgot__part');


login_btn.addEventListener('click', () => {
    if (login_user.value == "") {
        login_user.placeholder = "⚠️ Bạn chưa nhập tên đăng nhập";
        login_user.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
    } else {
        login_user.placeholder = "Tài khoản";
        login_user.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
    }

    if (login_pass.value.length <= 8) {
        login_pass.placeholder = "⚠️ Mật khẩu dưới 8 kí tự";
        login_pass.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
        login_pass.value = "";
    }
})

regis_btn.addEventListener('click', () => {
    if (regis_user.value == "") {
        regis_user.placeholder = "⚠️ Bạn chưa nhập tên đăng nhập";
        regis_user.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
    }

    if (regis_pass.value.length <= 8) {
        regis_pass.placeholder = "⚠️ Mật khẩu dưới 8 kí tự";
        regis_pass.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
        regis_pass.value ="";
    }

    if (regis_pass2.value != regis_pass.value) {
        regis_pass2.placeholder = "⚠️ Mật khẩu khƯông trùng";
        regis_pass2.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
        regis_pass2.value ="";
    }
    var i = regis_gmail.value;
    console.log(i);

    if (regis_gmail.value == "") {
        regis_gmail.placeholder = "⚠️Bạn chưa nhập Gmail";
        regis_gmail.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
    } 
    else if (i.includes("@gmail.com") != true) {
        regis_gmail.placeholder = "⚠️Bạn chưa nhập đúng Gmaiil";
        regis_gmail.style.animation = "pop cubic-bezier(.12,.53,.25,1.1) 0.5s";
        regis_gmail.value = "";
    }

})

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
    box.style.transform = "translateY(-1000px)";
    rando();
    // login_box.style.animation = "show 0.2s 0.2s forwards"
    // register_box.style.animation = "hide 0.1s 0.2s forwards"
})
