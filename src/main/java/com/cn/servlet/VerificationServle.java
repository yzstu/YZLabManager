package com.cn.servlet;

import com.cn.dao.TutorsDAO;
import com.cn.dao.UserDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
public class VerificationServle extends HttpServlet {


    public VerificationServle() {
        super();
    }


    public void destroy() {
        super.destroy();
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        this.doPost(request, response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String ID = request.getParameter("account");
        String psw = request.getParameter("password");
        String validateCode = request.getParameter("validateCode");
        String imageMask = (String) request.getSession().getAttribute("imageMask");
        if (imageMask.equals(validateCode)) {
            int i = UserDAO.checkAccount(ID, psw);
            if (i == 0) {
                session.setAttribute("account", ID);
                request.getRequestDispatcher("StuInterface/index.jsp").forward(request, response);
            } else if (i == 1) {
                session.setAttribute("ID", ID);
                session.setAttribute("tutorName", TutorsDAO.getTutorName(ID));
                request.getRequestDispatcher("/homeServlet").forward(request, response);
            }
        }else {
            request.setAttribute("msg", "验证码输入错误，请重新输入");
            request.getRequestDispatcher("./login.jsp").forward(request, response);
        }
    }

}
