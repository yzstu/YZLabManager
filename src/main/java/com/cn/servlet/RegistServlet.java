package com.cn.servlet;

import com.cn.dao.UserDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
public class RegistServlet extends HttpServlet {

    public void destroy() {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {

        String type = req.getParameter("type");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        req.setCharacterEncoding("utf-8");
        try {
            String name = req.getParameter("name");
            String password = req.getParameter("password");
            String tel = req.getParameter("tel");
            int totur = Integer.parseInt(req.getParameter("totur"));
            String stuClass = req.getParameter("class");
            //不知道为什么前段传回来的总是乱码，转码
            stuClass = new String(stuClass.getBytes("iso8859-1"), "utf-8");
            UserDAO.addUser(password, name, stuClass, tel, totur);
            if (type.equals("0")) {
                //参数0代表这个行为是注册
                response.sendRedirect("login.jsp");
            } else if (type.equals("1")) {
                //参数1代表这个行为是老师在添加自己的学生
                req.getRequestDispatcher("userShowServlet?type=2").forward(req, response);
            }
        } catch (Exception e) {
            System.out.println("用户注册失败");
            e.printStackTrace();
        }
    }

}
