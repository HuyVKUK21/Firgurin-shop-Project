// const ammount_input =  document.querySelectorAll('.ammount-input');
// const ammount_add =  document.querySelectorAll('.ammount-add');
// const ammount_sub =  document.querySelectorAll('.ammount-sub');

var inc = document.getElementsByClassName('ammount-add');
var dec = document.getElementsByClassName('ammount-sub');


$(document).ready(function() {
	$(".ammount-sub, .ammount-add").click(function(e) {
		e.preventDefault();

		var submitButton = $(this).val();
		var cart_id = $(this).closest("form").find("[name='cart_id']").val();
		var user_id = $(this).closest("form").find("[name='user_id']").val();

		$.ajax({
			type: "GET",
			url: "update-to-cart",
			data: {
				submitButton: submitButton,
				cart_id: cart_id,
				user_id: user_id
			},
			success: function(response) {
				 var updatedCartList = JSON.parse(response);
				console.log(response);
				 for (var i = 0; i < updatedCartList.length; i++) {
            var quantity = updatedCartList[i].quantity;
            console.log("Quantity for item at index " + i + ":", quantity);
           $(".ammount-input").val(quantity);
        }
 

			},
			error: function(error) {
				// Xử lý lỗi (nếu có)
				console.error(error);
			}
		});
	});
});

for (i = 0; i < inc.length; i++) {
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



for (i = 0; i < dec.length; i++) {
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