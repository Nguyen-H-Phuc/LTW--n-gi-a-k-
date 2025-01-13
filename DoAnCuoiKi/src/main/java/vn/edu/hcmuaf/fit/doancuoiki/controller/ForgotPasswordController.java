package vn.edu.hcmuaf.fit.doancuoiki.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.doancuoiki.dao.UserDao;
import vn.edu.hcmuaf.fit.doancuoiki.util.Email;

import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "ForgotPasswordController", value = "/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        UserDao dao = new UserDao();
        if(dao.isEmailExists(email)) {
            String token = UUID.randomUUID().toString();
            long expiryTime = System.currentTimeMillis() + 30 * 60 * 1000; // Token hết hạn sau 30 phút
            dao.createToken(token, expiryTime, email);
            String resetLink = "http://localhost:8080/DoAnCuoiKi_war/ResetPasswordController?token=" + token;
            Email.send(email, "Thuê xe máy - Đặt lại mật khẩu", "Click vào link để đặt lại mật khẩu "+ resetLink);
        }
    }
}