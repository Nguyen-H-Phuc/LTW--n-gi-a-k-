<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/10/2025
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="home_page/base.css">
    <link rel="stylesheet" href="assets/header_footer/footer.css">
    <link rel="stylesheet" href="assets/css/forgot_password.css">


</head>
<body>

<div class="login">
    <div class="header">
        <div class="header__item">
            <img class="header__item-img" src="../assets/img/home_img/logo_xemay.png">
            <span class="header__item-span">
          Đăng nhập
        </span>
        </div>
    </div>

    <div class="content">
        <div class="content__item">
            <img class="content__item-img" src="assets/img/home_img/xe/login_background.jpg" height="565" width="1366"/>
        </div>
        <div class="auth-form">
            <div class="auth-form__container">
                <div class="auth-form__header">
                    <h3 class="auth-form__heading">Đổi mật khẩu</h3>
                </div>

                <div class="auth-form__form">
                    <div class="auth-form__group">
                        <input type="text" class="auth-form__input" placeholder="Email của bạn">
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" placeholder="Mật khẩu của bạn">
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" placeholder="Mật khẩu mới">
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu mới">
                    </div>

                </div>

                <div class="auth-form__aside">
                    <div class="auth-form__helps">
                        <a href="" class="auth-form__helps-link auth-form__helps-forgot">Quên mật khẩu</a>
                        <span class="auth-form__helps-separate"></span>
                        <a href="" class="auth-form__helps-link">Cần trợ giúp?</a>
                    </div>
                </div>

                <div class="auth-form__controls">
                    <button class="btn btn--normal auth-form__controls-back">TRỞ LẠI</button>
                    <button class="btn btn--primary">ĐỔI MẬT KHẨU</button>
                </div>
            </div>
            <div class="social-container">
                <div class="auth-form__socials">
                    <a href="" class="auth-form__socials--facebook btn btn__size-s btn--with-icon">
                        <i class="auth-form__socials-icon fa-brands fa-square-facebook"></i>
                        <span class="auth-form__socials-title">
                        Đăng nhập với Facebook
                      </span>
                    </a>
                    <a href="" class="auth-form__socials--google btn btn__size-s btn--with-icon">
                        <i class="auth-form__socials-icon fa-brands fa-google"></i>
                        <span class="auth-form__socials-title">
                        Đăng nhập với Google
                      </span>
                    </a>
                </div>
            </div>
        </div>
    </div>


</div>

<script src="../assets/js/main.js"></script>
<script src="../assets/js/quit.js"></script>
</body>
</html>
