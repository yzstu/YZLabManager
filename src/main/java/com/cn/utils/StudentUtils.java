package com.cn.utils;

import com.cn.DBManager.DBManager;
import com.cn.bean.StuBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

public class StudentUtils {

    static Connection con = null;
    static PreparedStatement pst = null;
    static ResultSet rst = null;

    //获取我的学生ID Arr
    public static HashMap<String,Double> getMyStuArr(int tutorID){
        //学生IDArr
        ArrayList<Integer> myStuArr = new ArrayList<>();
        HashMap<String,Double> nameDuration = new HashMap<>();
        try {
            con = DBManager.getCon(con);
            pst = con.prepareStatement("SELECT id , name FROM user_table WHERE tutor_id = " + tutorID);
            rst = pst.executeQuery();
            while (rst.next()){
                myStuArr.add(rst.getInt("id"));

            }
            for (int i=0;i < myStuArr.size();i++){
                //签到时间Arr
                ArrayList<Timestamp> signTimeArr = new ArrayList<>();
                double learningTime = 0;
                pst = con.prepareStatement("SELECT signtime FROM sign_table WHERE id = " + myStuArr.get(i));
                rst = pst.executeQuery();
                while (rst.next()){
                    signTimeArr.add(rst.getTimestamp("signtime"));
                }
                for (int j = 0;j < signTimeArr.size()/2; j++){
                    learningTime = learningTime + signTimeArr.get(j+1).getTime() - signTimeArr.get(j).getTime();
                }
                String name = rst.getString("name");
                nameDuration.put(name,learningTime/(1000*60*60));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return nameDuration;
    }

    //获取学生信息
    public static ArrayList<StuBean> getStuInfo(int tutorID){
        ArrayList<StuBean> stuInfoArr = new ArrayList<>();
        try {
            con = DBManager.getCon(con);
            pst = con.prepareStatement("SELECT * FROM user_table WHERE tutor_id = " + tutorID);
            rst = pst.executeQuery();
            while (rst.next()){
                StuBean stu = new StuBean();
                stu.setID(rst.getInt("id"));
                stu.setName(rst.getString("name"));
                stu.setStuClass(rst.getString("class"));
                stu.setTel(rst.getString("tel"));
                stuInfoArr.add(stu);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return stuInfoArr;
    }


}
