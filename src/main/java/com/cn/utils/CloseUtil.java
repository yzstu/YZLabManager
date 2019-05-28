package com.cn.utils;

import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CloseUtil {
    /**
     * 关闭IO
     *
     * @param io 可关闭的io
     */
    public static boolean CloseIO(Closeable... io) {
        boolean flag = false;
        try {
            for (Closeable tem : io) {
                tem.close();
            }
            flag = true;
        } catch (IOException e) {
            System.out.println("关闭某IO时error");
            e.printStackTrace();
        }
        return flag;
    }

    public static boolean CloseIO(Connection con, PreparedStatement pst,
                                  ResultSet rst) {
        boolean flag = false;
        try {
            con.close();
            pst.close();
            rst.close();
            flag = true;
        } catch (Exception e) {
            System.out.println("关闭数据库连接时出现故障");
            e.printStackTrace();
        }
        return flag;
    }

    public static boolean CloseIO(Connection con, PreparedStatement pst) {
        boolean flag = false;
        try {
            con.close();
            pst.close();
            flag = true;
        } catch (Exception e) {
            System.out.println("关闭数据库连接时出现error");
            e.printStackTrace();
        }
        return flag;
    }
}
