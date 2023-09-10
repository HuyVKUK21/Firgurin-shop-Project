const banner_slide = document.querySelectorAll('.banner-slide');
const button_left = document.querySelector('.button__left');
const button_right = document.querySelector('.button__right');
const cata_left = document.querySelectorAll('.cata--button');
const productt = document.querySelectorAll('.product');

// d = 0;
// cata_left.forEach(el => {
//     d++;
//     if (d == 1) {
//         el.addEventListener('click', () => {
//             productt.style.translate = '0%';
//         })
//     }
//     if (d == 2) {
//         el.addEventListener('click', () => {
//             productt.style.translate = '-51%';
//         })
//     }
// })
e=0;
productt.forEach( em => {
    e++;
    d=0;
    if (e==1) {
        cata_left.forEach( el => {
            d++;
            if (d==1) {
                el.addEventListener('click', () => {
                    em.style.translate = '0%';
                })
            }
            if (d==2) {
                el.addEventListener('click', () => {
                    em.style.translate = '-51%';
                })
            }
        })
    }
    if (e==2) {
        cata_left.forEach( el => {
            d++;
            if (d==3) {
                el.addEventListener('click', () => {
                    em.style.translate = '0%';
                })
            }
            if (d==4) {
                el.addEventListener('click', () => {
                    em.style.translate = '-51%';
                })
            }
        })
    }
})

b = 1;
c = 0;

banner_slide.forEach(e => {
    c++;
})

button_left.addEventListener('click', () => {
    b--;
    slide();
});

button_right.addEventListener('click', () => {
    b++;
    slide();
});

function slide() {
    a = 0;
    banner_slide.forEach(e => {
        a++;
        if (b < 1) {
            b = c;
        } else if (b > c ) {
            b = 1;
        }
        if (a == 1) {
            e.style.display = "block";
        }
        if (a == b) {
            e.style.display = "block";
        }
        if (a != b) {
            e.style.display = "none";
        }
    });
    console.log("a = " + a)
    console.log("b = " + b)
}

setInterval( () => {
    b++;
    slide();
}, 5000 )


