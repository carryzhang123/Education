package org.jj.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
	public static String getNowTime(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
}
