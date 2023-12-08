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
	href="template/img/our-damn-logo.ico" sizes="32x32" />
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/navbar.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/login.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/font/Quicksand/quicksand.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'template/web/css/login.css'/>">

<title>Fingurin - Đăng nhập</title>

</head>
<body>
	<div class="login">
		<div class="box">
			<form:form action="login" method="POST" modelAttribute="user">
				<div class="login__box login__part">
				<p>${ status_login }</p>
					<img src="<c:url value = '/template/web/img/logo.webp'/>" alt="">
					<b>Chào mừng quay lại</b> <span>Chúng tôi nhớ bạn lắm rồi đấy!</span> 
						<form:input type="text" placeholder="Nhập Email người dùng" path="user_email"/>
						<form:input type="password" placeholder="Mật khẩu" path="user_password"/>
					<a href="/firgure-shop/forgot-password" class="forgot__btn">Quên
						mật khẩu?</a>
					<button type = "submit" class="price__button__add price__button--hover li-text">
						<span>Đăng nhập</span>
					</button>
					<div class="register-btn btn">
						Không có tài khoản, <span> <a href="/firgure-shop/sign-up">
								đăng kí</a>
						</span> nào!
					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
<script src="<c:url value = '/template/web/js/login.js'/>"></script>
</html>