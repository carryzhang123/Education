package org.jj.utils;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * 密码工具
 * @author Halo
 *
 */
public class Password {
	/**
	 * md5加密
	 * @param user_password
	 * @return
	 */
	public static String encrypt(String user_password) {
		  try {  
	            // 生成一个MD5加密计算摘要  
	            MessageDigest md = MessageDigest.getInstance("MD5");  
	            // 计算md5函数  
	            md.update(user_password.getBytes());  
	            // digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符  
	            // BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值  
	            return new BigInteger(1, md.digest()).toString(16);  
	        } catch (Exception e) {  
	           e.printStackTrace();  
	           return null;  
	        }
	}
	/**
	 * 一致性比对
	 * @param password
	 * @param encrypt_password
	 * @return
	 */
	public static boolean check(String password,String encrypt_password){
		return encrypt(password).equals(encrypt_password);
	}
}
