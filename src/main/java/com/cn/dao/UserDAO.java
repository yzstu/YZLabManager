package com.cn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cn.DBManager.DBManager;
import com.cn.utils.CloseUtil;

public class UserDAO {
    static Connection con = null;
    static PreparedStatement pst = null;
    static ResultSet rst = null;

    /**
     * 用户注册
     */
    public static void addUser(String pwd, String name, String stuClass, String tel, int toturId) {
        try {
            con = DBManager.getCon(con);
            pst = con.prepareStatement("insert user_table (pwd,name,class,tel,tutor_id) values (?,?,?,?,?)");
            pst.setString(1, pwd);
            pst.setString(2, name);
            pst.setString(3, stuClass);
            pst.setString(4, tel);
            pst.setInt(5, toturId);
            pst.execute();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("添加用户失败");
        } finally {
            try {
                CloseUtil.CloseIO(con, pst);
            } catch (Exception e2) {
            }
        }
    }

    /**
     * 登录时检查账号和密码，检查用户类型
     */
    public static int checkAccount(String ID, String psw) {
        int flag = 3;
        try {
            con = DBManager.getCon(con);
            pst = con
                    .prepareStatement("select * from user_table where id = ? and pwd = ?");
            pst.setString(1, ID);
            pst.setString(2, psw);
            rst = pst.executeQuery();
            while (rst.next()) {
                flag = rst.getInt("type");
            }
        } catch (Exception e) {
            System.out.println("登陆失败");
        } finally {
            DBManager.closeRst(rst);
            DBManager.closePst(pst);
            DBManager.closeCon(con);
        }
        return flag;
    }
}
