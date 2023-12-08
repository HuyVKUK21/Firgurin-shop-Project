<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

<c:forEach items="${tbl_detail_product }" var="detail_product">
	<title>${detail_product.product_name }</title>
</c:forEach>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/web/css/product.css">






<div class="directory">
	<a href="/firgure-shop">Trang chủ</a>
	<c:forEach items="${ tbl_category_product }" var="category">
		<a href="/firgure-shop/product-portfolio/${category.category_id }">
			${category.category_name }</a>
	</c:forEach>
	<c:forEach items="${tbl_detail_product }" var="detail_product">
		<span class="product__name"> ${detail_product.product_name }</span>
	</c:forEach>

</div>
<!--   @foreach ($product_details as $key => $value) -->
<div class="main">
	<div class="product">
		<div class="product__image slider" data-speed="0">
			<c:forEach items="${tbl_detail_product }" var="detail_product">

				<div class="image__left">
					<img class="img-list li-text"
						src="<c:url value = '/template/web/img/product/${detail_product.product_image }'/>"
						alt=""> <img class="img-list li-text"
						src="<c:url value = '/template/web/img/product/${detail_product.product_image2 }'/>"
						alt=""> <img class="img-list li-text"
						src="<c:url value = '/template/web/img/product/${detail_product.product_image3 }'/>"
						alt=""> <img class="img-list li-text"
						src="<c:url value = '/template/web/img/product/${detail_product.product_image4 }'/>"
						alt="">

				</div>
			</c:forEach>


			<c:forEach items="${tbl_detail_product }" var="detail_product">
				<div class="image__right">
					<div class="image__slide">
						<img class="img-list li-text"
							src="<c:url value = '/template/web/img/product/${detail_product.product_image }'/>"
							alt=""> <img class="img-list li-text"
							src="<c:url value = '/template/web/img/product/${detail_product.product_image2 }'/>"
							alt=""> <img class="img-list li-text"
							src="<c:url value = '/template/web/img/product/${detail_product.product_image3 }'/>"
							alt=""> <img class="img-list li-text"
							src="<c:url value = '/template/web/img/product/${detail_product.product_image4 }'/>"
							alt="">
					</div>
				</div>
			</c:forEach>

		</div>
		<div class="product__right">
			<div class="product__info">
				<c:forEach items="${tbl_detail_product }" var="detail_product">
					<f> <b>${detail_product.product_name }</b></f>
					<f> <b><fmt:formatNumber
							value="${detail_product.product_price}" type="currency"
							currencyCode="VND" maxFractionDigits="0" pattern="#,### ₫"/></b></f>
				</c:forEach>
			</div>


			<c:if test="${empty LoginInfo }">
				<div class="product__buy">
					<div class="buy__ammount li-text">
						<button type="button" class="ammount-sub" name="decqty">-</button>
						<input class="ammount-input" name="qty" type="tel" size="1"
							value="1" path="quantity" />
						<button type="button" class="ammount-add" name="incqty">+</button>
					</div>

					<button type="submit" 
						class="price__button__add2 price__button--hover2  li-text">
					
						<i class="fa-solid fa-cart-shopping"></i> 
							 <span>
							 <a href="/firgure-shop/login">Thêm vào giỏ</a>
							 </span>
						


					</button>

				</div>
			</c:if>

			<c:if test="${not empty LoginInfo }">
				<div class="product__buy">
					<form:form class="btn--form" action="/firgure-shop/cart"
						method="POST" modelAttribute="cart">
						<c:forEach items="${tbl_detail_product }" var="detail_product">
							<c:forEach items="${ tbl_category_product }" var="category">
								<c:forEach items="${tbl_brand_product }" var="brand">
									<div class="buy__ammount li-text">


										<button type="button" class="ammount-sub" name="decqty">-</button>
										<form:input class="ammount-input" name="qty" type="tel"
											size="1" value="1" path="quantity" />
										<button type="button" class="ammount-add" name="incqty">+</button>
									</div>

									<input name="productID_hidden" type="hidden"
										value="${detail_product.product_id }" />

									<form:input type="hidden" value="${detail_product.product_id }"
										path="product_id" />
									<form:input type="hidden" value="${category.category_id }"
										path="category_id" />
									<form:input type="hidden" value="${LoginInfo.user_id }"
										path="user_id" />
									<form:input type="hidden"
										value="${detail_product.product_name }" path="product_name" />

									<form:input type="hidden" value="${LoginInfo.user_email }"
										path="user_email" />

								</c:forEach>
							</c:forEach>
						</c:forEach>
						<button type="submit" onclick="checkAndSubmit()"
							class="price__button__add2 price__button--hover2  li-text">
							<i class="fa-solid fa-cart-shopping"></i> <span>Thêm vào
								giỏ</span>
						</button>

					</form:form>
				</div>
			</c:if>




			<div class="product__rule">
				<div class="rule">
					<span><b>✔ Sản phẩm chính hãng từ Nhật Bản.</b></span> <span><b>✔
							Trước khi bạn đặt mua :</b> vui lòng check lại giá hiện tại với
						admin, vì khả năng giá đã thay đổi so với lần cập nhật gần nhất,
						hoặc hết hàng, hết suất order. Do giới hạn số lượng, figure Nhật
						sẽ hiếm dần theo thời gian, dẫn tới giá tăng.</span>
				</div>
				<div class="rule">
					<span>✔ Với sản phẩm <b>CÓ SẴN, bạn sẽ được giao ngay.</b></span> <span>✔
						Với sản phẩm <b>ĐẶT TRƯỚC, bạn cần cọc 50% giá trị sản phẩm.</b>
						Hàng về VN khoảng 2-3 tuần sau khi phát hành. Lịch phát hành dự
						kiến như thông tin chi tiết bên dưới. Với sản phẩm CÓ SẴN, bạn sẽ
						được giao ngay.
					</span>
				</div>
				<div class="rule">
					<span>✔ Giao hàng tận nơi</span> <span>✔ Miễn phí ship với
						các đơn hàng >1000K </span> <span>✔ Vui lòng kiểm tra sản phẩm khi
						nhận bưu kiện Giao hàng tận nơi</span>
				</div>
			</div>

			<div class="product__detail">
				<span><b>Thông tin sản phẩm</b></span>
				<c:forEach items="${tbl_detail_product }" var="detail_product">
					<c:forEach items="${ tbl_category_product }" var="category">
						<c:forEach items="${tbl_brand_product }" var="brand">
							<span class="product__highlight">${detail_product.product_price_update }
								${detail_product.product_price }</span>
							<span>Danh mục: ${ category.category_name }</span>
							<span>Hãng sản xuất: ${brand.brand_name }</span>
							<span>Nhân vật: ${detail_product.product_desc }</span>
							<span>Series: ${detail_product.product_series }</span>
							<span>Tỷ lệ: ${detail_product.product_proportion }</span>
							<span>Kích thước: ${detail_product.product_size }</span>
							<span>Ngày phát hành: ${detail_product.product_date }</span>
						</c:forEach>

					</c:forEach>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

<div class="related">
	<span class="related__span">Sản phẩm liên quan</span>

	<div class="cata__contain">

		<div class="product2">
			<c:forEach items="${tbl_product }" var="detail_product">
				<div class="product__item">


					<a
						href="/firgure-shop/detail-product/${ detail_product.product_id }">
						<img class="img-list li-text"
						src="<c:url value = '/template/web/img/product/${detail_product.product_image }'/>"
						alt="">
					</a>

					<div class="product__item__price">
						<f title="{{ $relate_pro->product_name }}">${detail_product.product_name }</f>
						<span><fmt:formatNumber value="${detail_product.product_price}" type="currency" currencyCode="VND" maxFractionDigits="0" pattern="#,### ₫"/></span>
						<div class="price__button">
							<form action="{{ URL::to('/save-cart') }}" method="POST">

								<input name="productID_hidden" type="hidden"
									value="{{ $relate_pro->product_id }}" />
								<button class="price__button__add price__button--hover">
									<i class="fa-solid fa-cart-shopping"></i> <span>Thêm vào
										giỏ</span>
								</button>
							</form>
							<form
								action="{{ URL::to('/chi-tiet-san-pham/' . $relate_pro->product_id) }}">
								<button class="price__button__buy price__button--hover">
									<i class="fa-solid fa-bag-shopping"></i> <span>Mua ngay</span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>

</div>


<script src="<c:url value = '/template/web/js/product.js'/>">

</script>

