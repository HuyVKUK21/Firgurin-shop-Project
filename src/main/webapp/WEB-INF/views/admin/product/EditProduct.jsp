<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>

    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Cập nhật sản phẩm
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        @foreach ($edit_product as $key => $edit_product)
                            <form role="form" action="{{ URL::to('/update-product/' . $edit_product->product_id) }}"
                                method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                                    <input type="text" class="form-control" name="product_name" id="exampleInputEmail1"
                                        value="{{ $edit_product->product_name }}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giá sản phẩm</label>
                                    <input type="text" class="form-control" name="product_price" id="exampleInputEmail1"
                                        value="{{ $edit_product->product_price }}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giá cập nhật</label>
                                    <input type="text" class="form-control" name="product_price_update"
                                        id="exampleInputEmail1" placeholder="Giá cập nhật" value="{{$edit_product->product_price_update}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh sản phẩm</label>
                                    <input type="file" class="form-control" name="product_image" id="exampleInputEmail1"
                                        accept="image/*">
                                    <img src="{{ URL::to('uploads/product/' . $edit_product->product_image) }}" height="200"
                                        width="150">
                                </div>
                                <div class="form-group">
                                    <input type="file" class="form-control" name="product_image" id="exampleInputEmail1"
                                        accept="image/*">
                                    <img src="{{ URL::to('uploads/product/' . $edit_product->product_image2) }}" height="200"
                                        width="150">
                                </div>
                                <div class="form-group">
                                    <input type="file" class="form-control" name="product_image" id="exampleInputEmail1"
                                        accept="image/*">
                                    <img src="{{ URL::to('uploads/product/' . $edit_product->product_image3) }}" height="200"
                                        width="150">
                                </div>
                                <div class="form-group">
                                    <input type="file" class="form-control" name="product_image" id="exampleInputEmail1"
                                        accept="image/*">
                                    <img src="{{ URL::to('uploads/product/' . $edit_product->product_image4) }}" height="200"
                                        width="150">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style=" margin-top:10px;margin-bottom:15px">Mô tả sản phẩm</label> <br>
                                Nhân vật: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_desc"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm" value="{{ $edit_product->product_desc }}">
                                Series: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_series"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm"value="{{ $edit_product->product_series }}">
                                Tỷ lệ: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_size"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm"value="{{ $edit_product->product_size }}">
                                Kích thước: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_proportion"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm"value="{{ $edit_product->product_proportion }}">
                                Ngày phát hành: <input type="text" style="resize:none; margin-top:10px; margin-bottom:15px" rows="5" class="form-control" name="product_date"
                                    id="exampleInputPassword1" placeholder="Mô tả sản phẩm"value="{{ $edit_product->product_date }}">
                                </div>
                                <div class="form-group">
                                    <label for="exambleInput">Danh mục sản phẩm</label>
                                    <select name="product_cate" class="form-control input-sm m-bot15">
                                        @foreach ($cate_product as $key => $cate)
                                            @if ($cate->category_id == $edit_product->category_id)
                                                <option selected value="{{ $cate->category_id }}">
                                                    {{ $cate->category_name }}</option>
                                            @else
                                                <option value="{{ $cate->category_id }}">{{ $cate->category_name }}
                                                </option>
                                            @endif
                                        @endforeach

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exambleInput">Thương hiệu sản phẩm</label>
                                    <select name="product_brand" class="form-control input-sm m-bot15">
                                        @foreach ($brand_product as $key => $brand)
                                            @if ($brand->brand_id == $edit_product->brand_id)
                                                <option selected value="{{ $brand->brand_id }}">{{ $brand->brand_name }}
                                                </option>
                                            @else
                                                <option value="{{ $brand->brand_id }}">{{ $brand->brand_name }}</option>
                                            @endif
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
                                <button type="submit" name="update_product" class="btn btn-info">Cập nhật sản phẩm</button>
                            </form>
                        @endforeach
                    </div>

                </div>
            </section>

        </div>

    </div>
@endsection
