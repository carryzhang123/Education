package org.jj.utils;

import java.util.List;

@SuppressWarnings("unchecked")
public class ListUtil {
	public static <T> Boolean isNull(List<T> list){
		return list==null?true:list.size()<=0?true:false;
	}
	public static <T> List<T> convert(List<Object> list){
		return (List<T>) list;
	}
	public static <T> List<Object> ConvertToObject(List<T> list){
		return (List<Object>)list;
	}
}
