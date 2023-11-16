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
<link rel="icon" type="image/png" href="asset/img/our damn logo.png"
	sizes="32x32" />
<title>Welcome to Figure Shop</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/css/navbar.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/css/home.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/font/Quicksand/quicksand.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/font/Qicksand-Bold/Quicksand-Bold.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/fontawesome-free-6.2.0-web/css/all.css">


</head>
<body>
	<div class="cursor-round"></div>
	<div class="main"></div>
	<div data-speed="" class="slider">
		<!-- Header -->
		<%@include file="/common/web/header.jsp"%>
		<!-- Page Content -->
		<dec:body />
		<!-- Footer -->
		<%@include file="/common/web/footer.jsp"%>
	</div>

	<!-- JavaScript -->
	<script
		src="<c:url value = '/template/web/js/parallax.js'/>"></script>
			<script
		src="<c:url value = '/template/web/js/cursor.js'/>"></script>
			<script
		src="<c:url value = '/template/web/js/responsive.js'/>"></script>
			<script
		src="<c:url value = '/template/web/js/home.js'/>"></script>

</body>