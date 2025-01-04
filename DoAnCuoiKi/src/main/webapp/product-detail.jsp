<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/22/2024
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Wave RSX</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="assets/css/product-detail.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script>
        // Chèn header
        fetch('header.jsp')
            .then(response => response.text())
            .then(data => document.getElementById('header').innerHTML = data);

        // Chèn footer
        fetch('footer.jsp')
            .then(response => response.text())
            .then(data => document.getElementById('footer').innerHTML = data);
    </script>
</head>

<body>
<div class="product-detail">
    <header id="header"></header>
    <div class="container">
        <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa-solid fa-arrow-up"></i></button>
        <div class="information-content">
            <div class="product-image">
                <img src="${p.img}" alt="Wave RSX">
            </div>
            <form class="rental-information" action="/submit-rental" method="post">
                <div class="info">
                    <h1 class="name-moto" style="text-align: center">${p.name}/h1>
                        <h3 id="price-per-day">Giá thuê: <f:formatNumber value="${p.price}" />đ/ngày</h3>
                        <h3 id="manufacturer">Nhà sản xuất: ${p.brand}</h3>
                        <h3 id="year-of-manufacture">Năm sản xuất: ${p.year}</h3>
                        <h3 id="type">Loại xe: Xe số</h3>
                        <p class="note">* Giá thuê chưa bao gồm: Xăng phục vụ suốt chuyến đi, Bảo hiểm hành khách, Thuế VAT, Phụ thu dịp Lễ Tết.</p>
                </div>
                <div class="fill-in-info">
                    <div class="fill-in-item">
                        <label for="coupon">Mã giảm giá</label>
                        <input type="text" id="coupon" name="coupon">
                        <label for="delivery-location">Địa điểm giao xe</label>
                        <input type="text" id="delivery-location" name="delivery-location" required>
                        <label for="delivery-time">Thời gian nhận xe</label>
                        <input type="date" id="delivery-time" name="delivery-time" required>
                        <label for="return-time">Thời gian trả xe</label>
                        <input type="date" id="return-time" name="return-time" required>
                    </div>
                    <div class="button">
                        <button type="submit">Đặt xe</button>
                        <button type="button" onclick="alert('Bạn đã thêm vào giỏ hàng thành công.')">Thêm vào giỏ hàng</button>
                    </div>
                </div>
            </form>
        </div>


        <div class="products-detailed-information">
            <h1 class="product-title">Mô tả / Đánh giá chi tiết</h1>
            <div class="product-description">



                <p>${p.description}</p>

            </div>
        </div>


    </div>
    <div class="cac-san-pham-khac">
        <h1>Các sản phẩm tương tự</h1>
        <div class="list-product">
            <img src="/assets/img/product-img/Winner-X.png" alt="Xe máy Winner X, giá thuê từ 250.000đ/ngày">
            <div class="product-info">
                <h2>Winner X</h2>
                <p>Giá từ <strong>250.000đ</strong><span>/ngày</span></p>
                <button class="order-now-button">Đặt ngay</button>
            </div>
        </div>
    </div>

    <div id="footer"></div>

    <script>
        // Chèn header
        fetch('header.html')
            .then(response => response.text())
            .then(data => document.getElementById('header').innerHTML = data);

        // Chèn footer
        fetch('footer.html')
            .then(response => response.text())
            .then(data => document.getElementById('footer').innerHTML = data);

        // Get the button
        let mybutton = document.getElementById("myBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
</div>
</body>
</html>

