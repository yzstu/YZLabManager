package com.cn.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;


public class getDateUtils {

    //获取最近七天的日期
    public static  String [] getBeforeSevenDay(){
        String [] arr = new String[7];
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = null;
        for (int i=0;i<7;i++){
            c=Calendar.getInstance();
            c.add(Calendar.DAY_OF_MONTH, - i-1);
            arr[6-i] =sdf.format(c.getTime());

        }
        return arr;
    }


}
