<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon"
	href="frontend/img/our-damn-logo.ico" sizes="32x32" />
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/navbar.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/login.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/font/Quicksand/quicksand.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/login.css'/>">

<title>Fingurin - Đăng ký</title>

</head>
<body>
	<div class="login">
		<!--   <div class="transit">
            </div>
            <div class="transit trans2">
            </div>
            <div class="transit trans3">
            </div> -->
		<div class="box">
			<form:form action="sign-up" method="POST" modelAttribute="user">
				<div class="login__box register__part">
					<img src="<c:url value = '/template/web/img/logo.webp'/>" alt="">
					<b>Bạn là người mới sao?</b> 
					<span>Tạo tài khoản để ngắm
						figure nào!</span> 
						<!-- <input class="regis--user" type="text"
						placeholder="Tài khoản">  -->
						<form:input type="text" class="regis--user" placeholder="Tài khoản" path="user_name"/>
						<!-- <input class="regis--pass"
						type="password" placeholder="Mật khẩu"> --> 
							<form:input type="password" class="regis--pass" placeholder="Mật khẩu" path="user_password"/>
						<input class="regis--pass2" type="password"
						placeholder="Xác nhận mật khẩu"> 
					
					<!-- 	<input
						class="regis--gmail" type="text" placeholder="Gmail" value=""> -->
						<form:input type="email" class="regis--gmail" placeholder="Email" path="user_email"/>

					<button type="submit"
						class="price__button__add price__button--hover li-text regis--btn">
						<span>Đăng kí</span>
					</button>

					<div class="login-btn btn">
						Có tài khoản hả, <a href="/firgure-shop/login"><span>đăng
								nhập</span> </a>đi!
					</div>
				</div>

			</form:form>



		</div>
	</div>

</body>
<script src="<c:url value = '/template/web/js/login.js'/>"></script>
</html>