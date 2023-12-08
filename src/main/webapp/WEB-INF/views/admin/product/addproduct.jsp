<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Thêm sản phẩm
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <form role="form" action="{{ URL::to('/save-product') }}" method="post" enctype="multipart/form-data">
                
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên sản phẩm</label>
                                <input type="text" class="form-control" name="product_name"
                                    id="exampleInputEmail1" placeholder="Tên sản phẩm">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Giá sản phẩm</label>
                                <input type="text" class="form-control" name="product_price"
                                    id="exampleInputEmail1" placeholder="Giá sản phẩm">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Giá cập nhật</label>
                                <input type="text" class="form-control" name="product_price_update"
                                    id="exampleInputEmail1" placeholder="Giá cập nhật">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh sản phẩm</label>
                                <input type="file" class="form-control" name="product_image"
                                    id="exampleInputEmail1" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh sản phẩm</label>
                                <input type="file" class="form-control" name="product_image2"
                                    id="exampleInputEmail1" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh sản phẩm</label>
                                <input type="file" class="form-control" name="product_image3"
                                    id="exampleInputEmail1" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh sản phẩm</label>
                                <input type="file" class="form-control" name="product_image4"
                                    id="exampleInputEmail1" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1" style="margin-bottom:15px">Mô tả sản phẩm</label> <br>
                                Nhân vật: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_desc"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm">
                                Series: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_series"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm">
                                Tỷ lệ: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_size"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm">
                                Kích thước: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_proportion"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm">
                                Ngày phát hành: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_date"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm">
                            </div>
                            <div class="form-group">
                                <label for="exambleInput">Danh mục sản phẩm</label>
                                <select name="product_cate" class="form-control input-sm m-bot15">
                                    @foreach ($cate_product as $key => $cate)
                                        
                                    <option value="{{$cate ->category_id}}">{{$cate ->category_name}}</option>
                                    @endforeach
                                   
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exambleInput">Thương hiệu sản phẩm</label>
                                <select name="product_brand" class="form-control input-sm m-bot15">
                                    @foreach ($brand_product as $key => $brand)
                                        
                                    <option value="{{$brand ->brand_id}}">{{$brand ->brand_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exambleInput">Trạng thái</label>
                                <select name="product_status" class="form-control input-sm m-bot15">
                                    <option value="0">Hiển thị</option>
                                    <option value="1">Ẩn</option>
                                </select>
                            </div>
                            <?php
                            $message = Session::get('message');
                            if ($message) {
                                echo '<span style="font-weight: 700; color: #cb0e0e;" class="text-alert">', $message . '</span>';
                                Session::pull('message', null);
                            }
                            ?>
                            <br>
                            <button type="submit" name="add_product" class="btn btn-info">Thêm sản phẩm</button>
                        </form>
                    </div>

                </div>
            </section>

        </div>

    </div>

