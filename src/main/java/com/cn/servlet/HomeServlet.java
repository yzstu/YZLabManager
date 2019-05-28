package com.cn.servlet;

import com.cn.bean.StuBean;
import com.cn.dao.TutorsDAO;
import com.cn.utils.StudentUtils;
import com.cn.utils.getDateUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class HomeServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("utf-8");
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        String tutorID = (String) session.getAttribute("ID");
        ArrayList<StuBean> stuArr = StudentUtils.getStuInfo(Integer.parseInt((String) session.getAttribute("ID")));
        try {
            String [] sevenDayDateArr = getDateUtils.getBeforeSevenDay();
            String stuCount = TutorsDAO.getStuCount(tutorID);
            session.setAttribute("stuCount",stuCount);
            session.setAttribute("sevenDayDateArr",sevenDayDateArr);
            session.setAttribute("stuArr",stuArr);
            req.getRequestDispatcher("ToturInterface/index.jsp").forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
