let mousePosX = 0, mousePosY =0;
const cursorRound = document.querySelector('.cursor-round');
const li_text = document.querySelectorAll('.li-text');
const product = document.querySelectorAll('.product__item');

window.addEventListener('scroll', () => {
    let newScroll = window.scrollY;
    // console.log(newScroll);

        [].forEach.call(
            
        );
    if (newScroll > 10) {
        for (i = 0; i < li_text.length; ++i) {
            setInterval(()=>{
                li_text[i].style.transform = `translateX(100px)`;
            },500);
        }
    } else if (newScroll <= 10){
        li_text.forEach(text =>{
            text.style.transform = `translateX(0px)`;
        })
    }
})

document.onmousemove = (e) => {
    mousePosX = e.pageX;
    mousePosY = e.pageY;
};


let delay = 10;
let reviseMousePosX = 0;
let reviseMousePosY = 0;

function delayMouseFollow() {
    requestAnimationFrame(delayMouseFollow);

    reviseMousePosX += (mousePosX - reviseMousePosX)/delay;
    reviseMousePosY += (mousePosY - reviseMousePosY)/delay;

    cursorRound.style.top = reviseMousePosY + "px";
    cursorRound.style.left = reviseMousePosX + "px";
}

delayMouseFollow();

li_text.forEach(text => {
    text.onmouseover = function(){
           cursorRound.style.opacity = "0.2";
           cursorRound.style.width = "40px"
           cursorRound.style.height = "40px"
    }
    text.onmouseout = function() {
        cursorRound.style.opacity = "1";
           cursorRound.style.width = "20px"
           cursorRound.style.height = "20px"
    }
})

product.forEach(text => {
    text.onmouseover = function(){
           cursorRound.style.opacity = "0.2";
           cursorRound.style.width = "40px"
           cursorRound.style.height = "40px"
    }
    text.onmouseout = function() {
        cursorRound.style.opacity = "1";
           cursorRound.style.width = "20px"
           cursorRound.style.height = "20px"
    }
})


