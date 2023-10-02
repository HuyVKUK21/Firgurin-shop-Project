const right__info = document.querySelector(".right--info"); 
const right__change = document.querySelector(".right--change"); 
const right__btn = document.querySelector(".right--btn");

right__btn.addEventListener('click', () => {
    right__info.style.display = "none";
    right__change.style.display = "flex";
})