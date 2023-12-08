<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Dashboard</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="asset/img/our damn logo.png"
	sizes="32x32" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap-css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/bootstrap.min.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/style-responsive.css">
<!-- font CSS -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/font.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/admin/css/morris.css">

<!-- //font-awesome icons -->

</head>
<body>

	<section id="container">
		<!--header start-->
		<!-- Header -->
		<%@include file="/common/admin/header.jsp"%>
		<!--header end-->
		<!--sidebar start-->
		<%@include file="/common/admin/sidebar.jsp"%>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<dec:body />
			</section>
			<!-- footer -->
			<!-- Footer -->
			<%@include file="/common/admin/footer.jsp"%>
			<!-- / footer -->
		</section>
		<!--main content end-->
	</section>



	<!-- Page Content -->


	</div>

	<!-- JavaScript -->
	<script src="<c:url value = '/template/admin/js/jquery2.0.3.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/js/raphael-min.js'/>"></script>
	<script src="<c:url value = '/template/admin/js/morris.js'/>"></script>
	<script src="<c:url value = '/template/admin/js/bootstrap.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/js/jquery.dcjqaccordion.2.7.js'/>"></script>
	<script src="<c:url value = '/template/admin/js/scripts.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/js/jquery.slimscroll.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/js/jquery.nicescroll.js'/>"></script>
	<script src="<c:url value = '/template/admin/js/jquery.scrollTo.js'/>"></script>
</body>
</html>