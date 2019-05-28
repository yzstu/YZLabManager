package com.cn.dao;

import com.cn.DBManager.DBManager;
import com.cn.bean.StuSignInfoBean;
import com.cn.utils.CloseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 * 导师操作所需的数据库操作
 * */
public class TutorsDAO {

    static Connection con = null;
    static PreparedStatement pst = null;
    static ResultSet rst = null;

    /**
     * 查询学生个数
     */
    public static String getStuCount(String tutorID) {
        int stuCount = 0;
        try {
            con = DBManager.getCon(con);
            pst = con.prepareStatement("select COUNT(*) from user_table where tutor_id = "+ tutorID);
            rst = pst.executeQuery();
            while (rst.next()){
                stuCount = rst.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return stuCount+"";
    }

    /**
     * 登录时，获取导师姓名
     */
    public static String getTutorName(String ID) {
        String tutorName = null;
        try {
            con = DBManager.getCon(con);
            pst = con
                    .prepareStatement("select * from tutor_info where id = " + ID);
            rst = pst.executeQuery();
            while (rst.next()) {
                tutorName = rst.getString("name");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("登陆获取导师姓名失败");
        } finally {
            DBManager.closeRst(rst);
            DBManager.closePst(pst);
            DBManager.closeCon(con);
        }
        return tutorName;
    }

    /**
     * 获取该导师某学生一周内的签到情况（最早一次）
     * @param tutorID 导师ID
     * @return
     * */
    public static ArrayList<String> getLatestWeekSignTimeArr(String tutorID) {
        ArrayList<String> latestWeekSignTimeArr = new ArrayList<>();
        ArrayList<Integer> stuIdArr = new ArrayList<>();
        ArrayList<StuSignInfoBean> stuInfoArr = new ArrayList<>();
        try {
            con = DBManager.getCon(con);
            pst = con.prepareStatement("select id from user_table where tutor_id = " + tutorID);
            rst = pst.executeQuery();
            while (rst.next()) {
                stuIdArr.add(rst.getInt(1));
            }

            for (int id : stuIdArr){
                pst = con.prepareStatement(
                        "select date_format(signtime,'%Y-%m-%d'),max(signtime) " +
                        "from sign_table where date_format(signtime,'%Y-%m-%d')>=DATE_FORMAT(DATE_ADD(sysdate()," +
                        "INTERVAL -6 day),'%Y-%m-%d') and id = " + id +" " +
                        "group by date_format(signtime,'%Y-%m-%d')");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("");
        } finally {
            DBManager.closeRst(rst);
            DBManager.closePst(pst);
            DBManager.closeCon(con);
        }
        return latestWeekSignTimeArr;
    }
}
