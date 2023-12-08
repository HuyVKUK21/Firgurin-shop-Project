<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Cập nhật thương hiệu sản phẩm
                        </header>
                       
                        <div class="panel-body">
                               <c:forEach items="${ tbl_detail_brand_product }" var="brand">
                            <div class="position-center">
                                <form role="form" action="{{URL::to('/update-brand-product/'.$edit_value->brand_id)}}" method="post">
                              
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục</label>
                                    <input type="text" value="${brand.brand_name }" name="brand_product_name" class="form-control" id="exampleInputEmail1" >
                                </div>
                               
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả danh mục</label>
                                    <textarea style="resize: none" rows="8" class="form-control" name="brand_product_desc" id="exampleInputPassword1" >${brand.brand_desc }</textarea>
                                </div>
                             
                                <button type="submit" name="update_brand_product" class="btn btn-info">Cập nhật danh mục</button>
                                </form>
                            </div>
                            </c:forEach>
                        </div>
                    </section>

            </div>
