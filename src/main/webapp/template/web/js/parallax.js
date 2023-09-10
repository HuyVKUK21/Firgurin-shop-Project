const slider = document.querySelectorAll('.slider');

const body = document.body;
const main = document.querySelector('.main');

let sx = 0, sy = 0;
let dx = sx, dy = sy;

body.style.height = main.clientHeight + 'px';

main.style.position = 'fixed';
main.style.top = 0;
main.style.left = 0;

window.addEventListener('scroll', easeScroll);

function easeScroll() {
    sx = window.pageXOffset;
    sy = window.pageYOffset;
}

var current = window.pageYOffset;

window.requestAnimationFrame(render);

function render() {
    dx = li(dx,sx,0.05);
    dy = li(dy,sy,0.05);

    dx = Math.floor(dx * 100)/100;
    dy = Math.floor(dy * 100)/100;

    main.style.transform = `translate3d(-${dx}px,-${dy}px,0px)`;

    slider.forEach(e=>{
        let speed = e.dataset.speed;
        e.style.transform = `translateY(${dy*speed}px)`;
    })

    window.requestAnimationFrame(render);
}

function li(a,b,n) {
    return (1-n) * a + n * b;
}
