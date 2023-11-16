<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/web/css/main.css">
<div class="banner">
	<img src="<c:url value = '/template/web/img/collection_banner.webp}'/>"
		alt="">
</div>

<div class="content">
	<div class="collection">

		<c:forEach items="${ tbl_category_product }" var="category">
			<span>${category.category_name }</span>
		</c:forEach>

		<div class="collection__categ collection__categ--mobile li-text">
			<i class="fa-solid fa-angle-down"></i> Sắp xếp
			<div class="categ__box">
				<ul>
					<li class="categ--check"><i class="fa-solid fa-check"></i> Tất
						cả sản phẩm</li>
					<li><i class="fa-solid fa-check"></i> Giá: Tăng dần</li>
					<li><i class="fa-solid fa-check"></i> Giá: Tăng giảm</li>
					<li><i class="fa-solid fa-check"></i> Tên: A-Z</li>
					<li><i class="fa-solid fa-check"></i> Tên: Z-A</li>
					<li><i class="fa-solid fa-check"></i> Cũ nhất</li>
					<li><i class="fa-solid fa-check"></i> Mới nhất</li>
					<li><i class="fa-solid fa-check"></i> Bán chạy nhất</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="filter">
		<i class="fa-solid fa-filter"></i> Phân loại

		<div class="filter__seperate"></div>

		<div class="filter__option li-text">
			Thương hiệu <i class="fa-solid fa-arrow-down"></i>
			<div class="filler__box">
				<ul>
					<li><label> <a class="dropdown_select"
							href="{{URL::to('/san-pham')}}"> <span>Mọi hãng</span>
						</a>
					</label></li>
				</ul>

				<c:forEach items="${tbl_brand_product }" var="brand">
					<ul>
						<li><label> <a class="dropdown_select"
								href="{{URL::to('/thuong-hieu/'.$brand_pro->brand_id)}}"> <span>${brand.brand_name }</span>
							</a>
						</label></li>
					</ul>
				</c:forEach>
			</div>
		</div>

		<div class="filter__option li-text">
			Lọc giá <i class="fa-solid fa-arrow-down"></i>
			<div class="filler__box">
				<ul>
					<li><label> <input type="radio" name="price" checked>
							Mọi giá
					</label></li>
					<li><label> <input type="radio" name="price">
							Dưới 1.000.000₫
					</label></li>
					<li><label> <input type="radio" name="price">
							1.000.000₫ - 2.000.000₫
					</label></li>
					<li><label> <input type="radio" name="price">
							2.000.000₫ - 3.000.000₫
					</label></li>
					<li><label> <input type="radio" name="price">
							3.000.000₫ - 4.000.000₫
					</label></li>
					<li><label> <input type="radio" name="price">
							Trên 4.000.000₫
					</label></li>
				</ul>
			</div>
		</div>

		<div class="filter__option li-text">
			Tỉ lệ <i class="fa-solid fa-arrow-down"></i>
			<div class="filler__box">
				<ul>
					<li><label> <input type="radio" name="scale" checked>
							Mọi tỉ lệ
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/12
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/10
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/7
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/6
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/5
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/4
					</label></li>
					<li><label> <input type="radio" name="scale">
							1/3
					</label></li>
					<li><label> <input type="radio" name="scale">
							Non-scale
					</label></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="filter__mobile">
		<div class="mobile__op mobile-filter">
			<i class="fa-solid fa-filter mobile-filter__click"></i> Phân loại
			<div class="filter__box">
				<ul>
					<li><span class="filter__brand">Thương hiệu</span>
						<div class="filter__box__detail filter__brand--detail">
							<ul>
								<li><label> <a class="dropdown_select"
										href="{{URL::to('/thuong-hieu')}}"> <input type="radio"
											name="brandm" checked>Mọi hãng
									</a>
								</label></li>
							</ul>

							<ul>
								<li><label> <a class="dropdown_select"
										href="{{URL::to('/thuong-hieu/'.$brand_pro->brand_id)}}">
											<input type="radio" name="brandm">
											{{$brand_pro->brand_name}}
									</a>
								</label></li>
							</ul>

						</div></li>
					<li><span class="filter__price">Lọc giá</span>
						<div class="filter__box__detail filter__price--detail">
							<ul>
								<li><label> <input type="radio" name="pricem"
										checked> Mọi giá
								</label></li>
								<li><label> <input type="radio" name="pricem">
										Dưới 1.000.000₫
								</label></li>
								<li><label> <input type="radio" name="pricem">
										1.000.000₫ - 2.000.000₫
								</label></li>
								<li><label> <input type="radio" name="pricem">
										2.000.000₫ - 3.000.000₫
								</label></li>
								<li><label> <input type="radio" name="pricem">
										3.000.000₫ - 4.000.000₫
								</label></li>
								<li><label> <input type="radio" name="pricem">
										Trên 4.000.000₫
								</label></li>
							</ul>
						</div></li>
					<li><span class="filter__scale">Tỉ lệ</span>
						<div class="filter__box__detail filter__slace--detail">
							<ul>
								<li><label> <input type="radio" name="scalem"
										checked> Mọi tỉ lệ
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/12
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/10
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/7
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/6
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/5
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/4
								</label></li>
								<li><label> <input type="radio" name="scalem">
										1/3
								</label></li>
								<li><label> <input type="radio" name="scalem">
										Non-scale
								</label></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="mobile__op mobile-collect">
			<i class="fa-solid fa-angle-down mobile-collect__click"></i> Sắp xếp
			<div class="categ__box">
				<ul>
					<li class="categ--check">Tất cả sản phẩm <i
						class="fa-solid fa-check"></i></li>
					<li>Hàng có sẵn <i class="fa-solid fa-check"></i>
					</li>
					<li>Hàng order <i class="fa-solid fa-check"></i>
					</li>
					<li>R18 <i class="fa-solid fa-check"></i>
					</li>
					<li>Scale Figure <i class="fa-solid fa-check"></i>
					</li>
					<li>Art book <i class="fa-solid fa-check"></i>
					</li>
				</ul>
			</div>
		</div>

	</div>

	<div class="product">
		<c:forEach items="${ tbl_product_portfolio }" var="portfolio">
			<div class="product__item">
				<a href="/firgure-shop/detail-product/${portfolio.product_id }">

					<img
					src="<c:url value = '/template/web/img/product/${portfolio.product_image }'/>"
					alt="">
				</a>
				<div class="product__item__price">
					<f title="${portfolio.product_name }">${portfolio.product_name}</f>
					<span><fmt:formatNumber value="${portfolio.product_price}"
							type="currency" currencyCode="VND" /></span>
					<div class="price__button">
						<form action="{{URL::to('/save-cart')}}" method="POST">
							<input name="productID_hidden" type="hidden"
								value="{{$product->product_id}}" /> <input
								class="ammount-input" name="qty" type="hidden" value="1">
							<button class="price__button__add price__button--hover">
								<i class="fa-solid fa-cart-shopping"></i> <span>Thêm vào
									giỏ</span>
							</button>
						</form>
						<form
							action="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}"
							method="GET">
							<button class="price__button__buy price__button--hover">
								<i class="fa-solid fa-bag-shopping"></i> <span>Mua ngay</span>
							</button>
						</form>
					</div>
				</div>
			</div>


		</c:forEach>
		
		

<!-- 		<button onclick="previousPage()">Previous</button>
		<button onclick="nextPage()">Next</button>
 -->

	</div>
	<div class="pull-right pagination">
		<ul class="pagination">

			<li onclick="previousPage()" class="disabled li-text"><span><i
					class="fa fa-angle-double-left"></i></span></li>



			<li onclick="nextPage()"> <span><i
						class="fa fa-angle-double-right"></i></span>
			</a></li>
		</ul>
	</div>
</div>
