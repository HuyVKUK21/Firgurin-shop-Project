<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Trang chủ - Firgurin Shop</title>

</head>

<body>
<div class="banner">
            <div class="banner-navigate">
                <div class="banner--button button__left li-text">
                    <i class="fa-solid fa-chevron-left"></i>
                </div>
                <div class="banner--button button__right li-text">
                    <i class="fa-solid fa-chevron-right"></i>
                </div>
            </div>
<!--             <img class="banner-slide" src="asset/img/home/slide_1_img.webp" style="display: block;" alt="">
            <img class="banner-slide" src="asset/img/home/slide_2_img.webp" alt="">
            <img class="banner-slide" src="asset/img/home/slide_3_img.webp" alt="">
            <img class="banner-slide" src="asset/img/home/slide_4_img.webp" alt="">
            <img class="banner__img" src="asset/img/home/slide_1_img.webp" alt=""> -->
            
            <img class="banner-slide" src="<c:url value = '/template/web/img/home/slide_1_img.webp'/>" style="display: block;" alt="">
            <img class="banner-slide" src="<c:url value = '/template/web/img/home/slide_2_img.webp'/>" alt="">
            <img class="banner-slide" src="<c:url value = '/template/web/img/home/slide_3_img.webp'/>" alt="">
            <img class="banner-slide" src="<c:url value = '/template/web/img/home/slide_4_img.webp'/>" alt="">
            <img class="banner__img" src="<c:url value = '/template/web/img/home/slide_1_img.webp'/>" alt="">
        </div>

        <div class="colection">
            <div class="collection__content li-text">
                <div class="collection__content__left">
                    <span>${tbl_product.size() }</span>
                    <b>Nedoroid</b>
                    <span>
                        Dòng chibi figure được yêu thích nhất,
                        nhiều gương mặt, thoả sức tạo dáng</span>
                        <button>
                            <span>Xem ngay</span>
                        </button>
                </div>
                 <img src="<c:url value = '/template/web/img/home/categorybanner_1_img.webp'/>" alt="">
               <!--  <img src="asset/img/home/categorybanner_1_img.webp" alt=""> -->
            </div>
            <div class="collection__content li-text">
                <div class="collection__content__left">
                    <span>Bộ sưu tập</span>
                    <b>Nedoroid</b>
                    <span>
                        Dòng chibi figure được yêu thích nhất,
                        nhiều gương mặt, thoả sức tạo dáng</span>
                    <button>
                        <span>Xem ngay</span>
                    </button>
                </div>
                <img src="<c:url value = '/template/web/img/home/categorybanner_2_img.webp'/>" alt="">
            <!--     <img src="asset/img/home/categorybanner_2_img.webp" alt=""> -->
            </div>
        </div>

        <div class="content">

            <div class="catalog">
                <b>Sản phẩm order</b>
                <span>Những sản phẩm đã hoặc sắp phát hành & cần đặt trước</span>
                <div class="cata__box order">
                <img src="<c:url value = '/template/web/img/home/home_collection_1_banner.webp'/>" alt="">
                   <!--  <img src="asset/img/home/home_collection_1_banner.webp" alt=""> -->
                    <div class="cata__contain">
                        <div class="cata__navigate">
                            <div class="cata--button cata--left">
                                <i class="fa-solid fa-chevron-left"></i>
                            </div>
                            <div class="cata--button cata--left">
                                <i class="fa-solid fa-chevron-right"></i>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
                                    <!-- <img src="asset/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Fire Dance Hutao Limited</f>
                                    <span>2.400.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
            
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                                    <!-- <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                                   <!--  <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                                   <!--  <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                                  <!--   <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                       <!--              <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                                   <!--  <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
                               <!--      <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
   <!--                                  <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                 <img src="<c:url value = '/template/web/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg'/>" alt="">
        <!--                             <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item"></div>
                            <div class="product__item"></div>
    
                        </div>
                    </div>
                </div>
            </div>

            <!-- Có sẵn -->

            <div class="catalog">
                <b>Sản phẩm order</b>
                <span>Những sản phẩm đã hoặc sắp phát hành & cần đặt trước</span>
                <div class="cata__box">
                 <img src="<c:url value = '/template/web/img/home/home_collection_1_banner.webp'/>" alt="">
                
                    <div class="cata__contain">
                        <div class="cata__navigate">
                            <div class="cata--button cata--left">
                                <i class="fa-solid fa-chevron-left"></i>
                            </div>
                            <div class="cata--button cata--left">
                                <i class="fa-solid fa-chevron-right"></i>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product__item">
                                <a href="">
                                  <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
<!--                                     <img src="asset/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Fire Dance Hutao Limited</f>
                                    <span>2.400.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
            
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
                                  <!--   <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
<!--                                     <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
                                   <!--  <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
 <!--                                    <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
 <!--                                    <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
        <!--                             <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
                                  <!--   <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
                <!--                     <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item">
                                <a href="">
                                    <img src="<c:url value = '/template/web/img/product/28cm-Anime-Genshin-Impact-Figure-Hu-Tao-Figure-Hutao-Action-Figures-Collection-Model-Figurine-Doll-Toys.jpg_Q90.jpg_.jpg'/>" alt="">
    <!--                                 <img src="asset/img/product/17Cm-Genshin-T-c-ng-Klee-Hibana-Hi-p-S-Anime-H-nh-1-7-Quy.jpg_Q90.jpg_.jpg" alt=""> -->
                                </a>
                                <div class="product__item__price">
                                    <f>Genshin Impact : Summer Bombin Klee</f>
                                    <span>3.110.000₫</span>
                                    <div class="price__button">
                                        <button class="price__button__add price__button--hover">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <span>Thêm vào giỏ</span>
                                        </button>
                                        <button class="price__button__buy price__button--hover">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                            <span>Mua ngay</span>
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div class="product__item"></div>
                            <div class="product__item"></div>
    
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <div class="detail">
            <div class="detail__item">
                <i class="fa-solid fa-box"></i>
                <b>Sản phẩm chính hãng</b>
                <span>Nhập khâu trực tiếp từ Nhật Bản</span>
            </div>

            <div class="detail__item">
                <i class="fa-regular fa-credit-card"></i>
                <b>Thanh toán đơn giản</b>
                <span>Chuyển khoản hoặc COD</span>
            </div>

            <div class="detail__item">
                <i class="fa-solid fa-truck"></i>
                <b>Giao hàng nhanh chóng</b>
                <span>Miễn phí với đơn hàng >1000K</span>
            </div>
        </div>

</body>