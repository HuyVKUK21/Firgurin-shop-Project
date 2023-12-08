<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

       <aside>
            <div id="sidebar" class="nav-collapse">
                <!-- sidebar menu start-->
                <div class="leftside-navigation">
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li>
                            <a class="active" href="/firgure-shop/dashboard">
                                <i class="fa fa-dashboard"></i>
                                <span>Tổng quan</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-book"></i>
                                <span>Danh mục sản phẩm</span>
                            </a>
                            <ul class="sub">
                                <li><a href="/firgure-shop/addCategory">Thêm danh mục sản phẩm</a></li>
                                <li><a href="/firgure-shop/allCategory">Liệt kê danh mục sản phẩm</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-book"></i>
                                <span>Thương hiệu sản phẩm</span>
                            </a>
                            <ul class="sub">
                                <li><a href="/firgure-shop/addBrand">Thêm thương hiệu sản phẩm</a></li>
                                <li><a href="/firgure-shop/allBrand">Liệt kê thương hiệu sản phẩm</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-book"></i>
                                <span>Sản phẩm</span>
                            </a>
                            <ul class="sub">
                                <li><a href="/firgure-shop/addProduct">Thêm sản phẩm</a></li>
                                <li><a href="/firgure-shop/allProduct">Liệt kê sản phẩm</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-book"></i>
                                <span>Đơn hàng</span>
                            </a>
                            <ul class="sub">
                                <li><a href="/firgure-shop/orderManagement">Quản lý đơn hàng</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/firgure-shop/trang-chu">
                                <i class="fa fa-user"></i>
                                <span>Trở về giao diện người dùng</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- sidebar menu end-->
            </div>
        </aside>