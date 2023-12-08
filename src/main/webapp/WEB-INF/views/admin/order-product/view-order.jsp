<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>


<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Thông tin khách hàng
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
                <?php
                    $message = Session::get('message');
                                    if ($message) {
                                        echo '<span style="margin-left:20px;    font-weight: 700; color: #cb0e0e;" class="text-alert">', $message . '</span>';
                                        Session::pull('message', null);
                                    }
                                
                ?>
                <thead>
                    <tr>
                        <th style="width:20px;">
                            <label class="i-checks m-b-none">
                                <input type="checkbox"><i></i>
                            </label>
                        </th>
                        <th>Tên khách hàng</th>
                        <th>Số điện thoại</th>
                        <th style="width:30px;"></th>
                    </tr>
                </thead>
                <tbody>
                   
                        
                    <tr>
                        <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                        <td>{{$order_by_id->user_name}}</td>
                        <td>{{$order_by_id->user_phone}}</td>
                        
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<br>
<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Thông tin vận chuyển
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
                <?php
                    $message = Session::get('message');
                                    if ($message) {
                                        echo '<span style="margin-left:20px;    font-weight: 700; color: #cb0e0e;" class="text-alert">', $message . '</span>';
                                        Session::pull('message', null);
                                    }
                                
                ?>
                <thead>
                    <tr>
                        <th style="width:20px;">
                            <label class="i-checks m-b-none">
                                <input type="checkbox"><i></i>
                            </label>
                        </th>
                        <th>Tên người vận chuyển</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th style="width:30px;"></th>
                    </tr>
                </thead>
                <tbody>
                   
                        
                    <tr>
                        <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                        <td>{{$order_by_id->shipping_name}}</td>
                        <td>{{$order_by_id->shipping_address}}</td>
                        <td>{{$order_by_id->shipping_phone}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<br><br>
<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Thông tin đơn hàng
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
                <?php
                    $message = Session::get('message');
                                    if ($message) {
                                        echo '<span style="margin-left:20px;    font-weight: 700; color: #cb0e0e;" class="text-alert">', $message . '</span>';
                                        Session::pull('message', null);
                                    }
                                
                ?>
                <thead>
                    <tr>
                        <th style="width:20px;">
                            <label class="i-checks m-b-none">
                                <input type="checkbox"><i></i>
                            </label>
                        </th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Tổng tiền</th>
                        <th style="width:30px;"></th>
                    </tr>
                </thead>
                <tbody>
                   
                        
                    <tr>
                        <td><label class="i-checks m-b-none"><input type="checkbox" name="post"><i></i></label></td>
                        <td>{{$order_by_id->product_name}}</td>
                        <td>{{$order_by_id->product_sales_quantity}}</td>
                        <td>{{number_format($order_by_id->product_price,0,',',',').'₫'}}</td>
                        <td>{{number_format($order_by_id->product_price*$order_by_id->product_sales_quantity,0,',',',').'₫'}}</td>
                        
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection