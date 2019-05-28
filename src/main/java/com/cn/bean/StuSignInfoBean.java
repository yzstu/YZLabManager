package com.cn.bean;

import java.sql.Timestamp;
import java.util.ArrayList;

public class StuSignInfoBean {
    private static String name;
    private static ArrayList<Timestamp> latestWeekSignTimeArr;

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        StuSignInfoBean.name = name;
    }

    public static ArrayList<Timestamp> getLatestWeekSignTimeArr() {
        return latestWeekSignTimeArr;
    }

    public static void setLatestWeekSignTimeArr(ArrayList<Timestamp> latestWeekSignTimeArr) {
        StuSignInfoBean.latestWeekSignTimeArr = latestWeekSignTimeArr;
    }

    public static void addLatestWeekSignTimeArr(Timestamp signTime){
        latestWeekSignTimeArr.add(signTime);
    }
}
