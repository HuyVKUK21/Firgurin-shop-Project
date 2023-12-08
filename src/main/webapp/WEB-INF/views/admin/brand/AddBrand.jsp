<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Thêm thương hiệu sản phẩm
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <form:form action="/firgure-shop/saveBrand" method="POST" modelAttribute="brand">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên thương hiệu</label>
                                <form:input type="text" class="form-control"
                                    id="exampleInputEmail1" placeholder="Tên thương hiệu" path="brand_name"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mô tả thương hiệu</label>
                                <form:textarea style="resize:none" rows="5" class="form-control"
                                    id="exampleInputPassword1" placeholder="Mô tả thương hiệu" path="brand_desc"/>
                            </div>
                            <div class="form-group">
                                <label for="exambleInput">Trạng thái</label>
                                <form:select class="form-control input-sm m-bot15" path="brand_status">
                                    <option value="0">Hiển thị</option>
                                    <option value="1">Ẩn</option>
                                </form:select>
                            </div>
                            <br>
                            <button type="submit" name="add_brand_product" class="btn btn-info">Thêm thương hiệu</button>
                        </form:form>
                    </div>

                </div>
            </section>
        </div>
    </div>
