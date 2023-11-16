<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

    <title>Figurin - Tài khoản</title>
    <link rel="stylesheet" href="<c:url value = 'template/web/css/info.css'/>">

    <div class="title">
        <b>Tài khoản của bạn</b>
    </div>

    <div class="info">
        <div class="left">
            <b>Tài khoản</b>
            <ul>
                <li class="li-text">Thông tin tài khoản</li>
                <li class="li-text"><a href="/firgure-shop/logout">Đăng xuất</a></li>
            </ul>
        </div>
        <div class="right">
            <div class="right__info right--info">
                <b>
                    Thông tin tài khoản
                    <i class="li-text right--btn fa-regular fa-pen-to-square"></i>
                </b>
                <span>Tên tài khoản : ${LoginInfo.user_name }</span>
                <span>Gmail :  ${LoginInfo.user_email }</span>

                <span>Số điện thoại :  ${LoginInfo.user_phone }</span>
                <span>Địa chỉ :  ${LoginInfo.user_address }</span>
            </div>
            <form class="right__info right--change" action="">
                <b>
                    Thay đổi thông tin tài khoản
                </b>
                <span>Tên tài khoản :
                    <input name="name" type="text">
                </span>
                <span>Số điện thoại :
                    <input name="phone" type="text">
                </span>
                <span>Địa chỉ :
                    <input name="address" type="text">
                </span>

                <div class="change">
                    <button name="update_user">Thêm mới</button>
                    hoặc bạn muốn
                    <a href="">Hủy</a>
                </div>
            </form>
        </div>
    </div>
<script src="<c:url value = '/template/web/js/info.js'/>"></script>
    