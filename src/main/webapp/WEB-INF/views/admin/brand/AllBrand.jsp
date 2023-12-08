<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>


<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Liệt kê thương hiệu sản phẩm
        </div>
        <div class="row w3-res-tb">
            <div class="col-sm-5 m-b-xs">
                <select class="input-sm form-control w-sm inline v-middle">
                    <option value="0">Bulk action</option>
                    <option value="1">Delete selected</option>
                    <option value="2">Bulk edit</option>
                    <option value="3">Export</option>
                </select>
                <button class="btn btn-sm btn-default">Apply</button>
            </div>
            <div class="col-sm-4">
            </div>
            <div class="col-sm-3">
                <div class="input-group">
                    <input type="text" class="input-sm form-control" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-sm btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
         
                <thead>
                    <tr>
                        <th style="width:20px;">
                            <label class="i-checks m-b-none">
                                <input type="checkbox"><i></i>
                            </label>
                        </th>
                        <th>Tên danh mục</th>
                        <th>Trạng thái</th>
                        <th style="width:30px;"></th>
                    </tr>
                </thead>
                <tbody>
            <c:forEach items="${ tbl_brand_product }" var="brand">

                    <tr>
                        <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                        <td>${brand.brand_name }</td>
                        <td><span class="text-ellipsis">
                             <c:if test = "${brand.brand_status  == 0}">
                             <a href="/firgure-shop/active-brand-product/${brand.brand_id }"><span class="fa-thumb-styling fa fa-thumbs-down"></span></a>
                            </c:if>
                                   
                               <c:if test = "${brand.brand_status  == 1}">
                                  <a href="/firgure-shop/deactivate-brand-product/${brand.brand_id }"> <span class="fa-thumb-styling fa fa-thumbs-up"></span></a>
                            </c:if>
                           
                     
                        </span></td>
                        <td>
                            <a href="/firgure-shop/editBrand/${brand.brand_id }" class="active styling-edit"  ui-toggle-class="">
                                <i class="fa fa-pencil-square-o text-success text-active" title="Sửa"></i>
                            </a>
                            <a onclick="return confirm('Are you sure to delete?')" href="{{URL::to('/delete-brand-product/'.$brand_pro->brand_id)}}" class="active styling-edit" ui-toggle-class="">
                                <i class="fa fa-times text-danger text" title="Xoá"></i>
                            </a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <footer class="panel-footer">
            <div class="row">

                <div class="col-sm-7 text-right text-center-xs">
                    <ul class="pagination pagination-sm m-t-none m-b-none">
                        <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</div>
