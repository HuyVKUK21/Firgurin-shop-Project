<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>
  <title>Hỗ trợ khách hàng - Figurin</title>
  <link rel="stylesheet" href="<c:url value = 'template/web/css/contact.css'/>">
    <div class="directory">
            <a href="">Trang chủ</a>
            <a href="">Liên hệ</a>
        </div>

        <div class="main">
            <div class="lefty">
                <b>Thông tin liên hệ</b>
                <div class="item">
                    <i class="fa-solid fa-location-dot"></i>
                    <div class="item__text">
                        <b>Địa chỉ</b>
                        <span>Quận 10, Hồ Chí Minh</span>
                    </div>
                </div>

                <div class="item">
                    <i class="fa-regular fa-envelope"></i>
                    <div class="item__text">
                        <b>Email</b>
                        <span>japanfigurintech@gmail.com</span>
                    </div>
                </div>

                <div class="item">
                    <i class="fa-solid fa-phone"></i>
                    <div class="item__text">
                        <b>Điện thoại</b>
                        <span>09382174138</span>
                    </div>
                </div>

                <div class="item">
                    <i class="fa-solid fa-briefcase"></i>
                    <div class="item__text">
                        <b>Thời gian làm việc</b>
                        <span>Bạn vui lòng hẹn trước khi đến xem sản phẩm, giao dịch, đặt cọc.</span>
                    </div>
                </div>

            </div>

            <form action="" class="righty">
                    <b>Gửi thắc mắc cho chúng tôi</b>
                    <span>Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể .</span>
                    <input name="name" type="text" placeholder="Tên của bạn">
                    <div class="righty__stuff">
                        <input name="gmail" type="text" placeholder="Email của bạn">
                        <input name="phone" type="text" placeholder="SĐT của bạn">
                    </div>
                    <input name="detail" class="long" type="text" placeholder="Nội dung">
                    <button style="padding: 20px; background-color: black; color: white; font-size: 1.6rem;">GỬI THẮC MẮC</button>
            </form>
        </div>
    </div>