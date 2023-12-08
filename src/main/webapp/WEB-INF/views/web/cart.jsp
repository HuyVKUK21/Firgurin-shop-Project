<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/common/taglib.jsp"%>

<title>Giỏ hàng của bạn</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/web/css/cart.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script
		src="<c:url value = '/template/web/js/cart.js'/>"></script>


<div class="directory">
	<a href="/firgure-shop/trang-chu">Trang chủ</a> <span>Giỏ hàng</span>
</div>

<div class="title">Giỏ hàng của bạn</div>
<c:if test="${LoginInfo.user_id eq user_id}">
	<div class="cart">
		<div class="cart__left">
			<div class="cart__head">
				<span>Bạn đang có </span> <b class="ammount"> ${qty } </b> <span>
					sản phẩm trong giỏ</span>
			</div>


			<div class="cart__product">

				<c:forEach items="${tbl_info_cart }" var="cart">
					<div class="cart__item">
						<div class="item__top">
							<form action="/firgure-shop/update-to-cart" method="GET">
								<div class="item__info">

									<img class="img-list li-text"
										src="<c:url value = '/template/web/img/product/${cart.product_image }'/>"
										alt="">
									<div class="details">
										<input  type="hidden" value="${cart.cart_id }" name="cart_id">
										<input type="hidden" value="${LoginInfo.user_id }"
											name="user_id"> <b>${cart.product_name }</b>
										<div class="buy__ammount li-text">
											<button name="submitButton" class="ammount-sub" value="-">-</button>
											<input class="ammount-input" type="tel"
												value="${cart.quantity }" min ="0" readonly>
											<button name="submitButton" class="ammount-add" value="+">+</button>
										</div>
										<b class="price"><fmt:formatNumber
												value="${cart.product_price}" type="currency"
												currencyCode="VND" pattern="#,### ₫" /> </b>
									</div>
								</div>
							</form>
							<a
								href="/firgure-shop/delete-to-cart/${cart.cart_id}/${LoginInfo.user_id}"
								style="color: black"><i
								class="fa-regular fa-trash-can li-text"></i></a>
						</div>
						<div class="item__bot">
							<b>Thành tiền :</b> <span class="total"><fmt:formatNumber
									value="${cart.product_price * cart.quantity}" type="currency"
									currencyCode="VND" pattern="#,### ₫" /> </span>
						</div>
					</div>
				</c:forEach>


			</div>

		</div>

		<div class="cart__right">
			<span>Thông tin đơn hàng</span>
			<div class="right__total">
				<b>Tổng tiền :</b>
				<c:set var="totalPrice" value="0" />
				<c:forEach items="${tbl_info_cart }" var="cart">
					<c:set var="itemPrice"
						value="${cart.product_price * cart.quantity}" />
					<c:set var="totalPrice" value="${totalPrice + itemPrice}" />
				</c:forEach>
				<b class="order__total"><fmt:formatNumber value="${totalPrice}"
						type="currency" currencyCode="VND" pattern="#,### ₫" /></b>
			</div>
			<ul>
				<li>Phí vận chuyển sẽ được tính ở trang thanh toán.</li>
				<li>Bạn cũng có thể nhập mã giảm giá ở trang thanh toán.</li>
			</ul>

			<c:if test="${not empty LoginInfo }">
				<a href="/firgure-shop/payment/${LoginInfo.user_id }">
					<button class="price__button__add price__button--hover li-text">
						Thanh toán</button>
				</a>
			</c:if>
			<c:if test="${empty LoginInfo }">
				<a href="/firgure-shop/login">
					<button class="price__button__add price__button--hover li-text">
						Thanh toán</button>
				</a>
			</c:if>
		</div>
	</div>

</c:if>


<c:if test="${LoginInfo.user_id ne user_id}">
	<div class="cart">
		<div class="cart__left">
			<div class="cart__head">
				<span>Đã xảy ra lỗi khi truy vấn giỏ hàng! Vui lòng đăng nhập
					và thử lại</span>
			</div>

			<div class="cart__product">
				<div class="cart__item">
					<div class="item__top"></div>

				</div>
			</div>

		</div>

		<div class="cart__right">
			<span>Thông tin đơn hàng</span>
			<div class="right__total">
				<b>Tổng tiền :</b>
				<c:forEach items="${tbl_detail_product }" var="detail_product">
					<b class="order__total">${ detail_product.product_price}</b>
				</c:forEach>
			</div>
			<ul>
				<li>Phí vận chuyển sẽ được tính ở trang thanh toán.</li>
				<li>Bạn cũng có thể nhập mã giảm giá ở trang thanh toán.</li>
			</ul>

			<c:if test="${not empty LoginInfo }">
				<a href="/firgure-shop/payment/${LoginInfo.user_id }">
					<button class="price__button__add price__button--hover li-text">
						Thanh toán</button>
				</a>
			</c:if>
			<c:if test="${empty LoginInfo }">
				<a href="/firgure-shop/login">
					<button class="price__button__add price__button--hover li-text">
						Thanh toán</button>
				</a>
			</c:if>
		</div>
	</div>

</c:if>

<!-- Thêm thư viện jQuery -->

