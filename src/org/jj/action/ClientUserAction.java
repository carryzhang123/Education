package org.jj.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.jj.model.TabUserInfo;
import org.jj.services.UserInfoServices;
import org.jj.utils.BaseAction;

import com.alibaba.fastjson.JSONObject;
import com.li.utils.bootstrapTable.PageModel;
import com.opensymphony.xwork2.ActionContext;

/**
 * 瀹㈡埛绔敤鎴�
 * 
 * @author Halo
 *
 */
@SuppressWarnings({  "unused" })
public class ClientUserAction extends BaseAction {

	public UserInfoServices userInfoServices;

	public static String USER_INFO = "userInfo";
	public static String USER_ROLES="userRole";
	
	private static final long serialVersionUID = -5675951727231079201L;

	public String signIn(){
		return "signIn";
	}
	public String signUp(){
		List<Integer> age=new ArrayList<Integer>();
		for(int i=1;i<=99;i++){
			age.add(i);
		}
		request.setAttribute("age",age);
		request.setAttribute(USER_ROLES,userInfoServices.role_list());
		return "signUp";
	}
	
	
	/**
	 * 登入
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public String logIn() throws ServletException, IOException {
		String user_id=request.getParameter("user_id");
		String user_password=request.getParameter("user_password");
		TabUserInfo userInfo = userInfoServices.checkLogin(user_id, user_password);
		String result_info = "";
		if (!userInfo.isLogin()) {
			result_info = userInfo.getLogin_result();
			request.setAttribute("result_info", result_info);
			return "noLogin";
		} else {
			// user login and write userInfo to session.、
			session.put(USER_INFO, userInfo);
			return "login";
		}
	}

	/**
	 * 登出
	 */
	public String logOut() {
		String result_info = "";
		if (session.get(USER_INFO) == null) {
			result_info = "用户未登录";
		} else {
			session.remove(USER_INFO);
			result_info = "已注销";
		}
		return SUCCESS;
	}

	/**
	 * 注册
	 * 
	 * @param user_id
	 * @param user_password
	 * @param user_name
	 * @param user_sex
	 * @param user_age
	 * @param user_address
	 * @param user_address_city
	 * @param user_role
	 */
	public void register(String user_id, String user_password, String user_name, String user_sex, String user_age,
			String user_address, Integer user_address_city, Integer user_role) {
		Integer result = userInfoServices.register(user_id, user_password, user_name, user_sex, user_age, user_address,
				user_address_city, user_role);

		String result_info = "";
		switch (result) {
		case 0:
			result_info = "注册操作执行失败,请检查输入参数";
			break;
		case 1:
			result_info = "注册成功";
			break;
		case 2:
			result_info = "存在重复的账号";
			break;
		case 3:
			result_info = "用户角色不存在";
			break;
		default:
			result_info = "操作未执行";
			break;
		}
	}

	/**
	 * 修改个人信息
	 */
	public void update(String user_id, String user_password, String user_name, String user_sex, String user_age,
			String user_address, Integer user_address_city) {
		String result_info = "";
		if (session.get(USER_INFO) == null) {
			result_info = "用户未登录";
		} else {
			Integer result = userInfoServices.update((TabUserInfo) session.get(USER_INFO), user_id, user_password,
					user_name, user_sex, user_age, user_address, user_address_city);
			switch (result) {
			case -1:
				result_info = "用户信息不存在";
				break;
			case 0:
				result_info = "修改个人资料操作执行失败,请检查输入参数";
				break;
			case 1:
				result_info = "修改成功";
				break;
			case 2:
				result_info = "账号信息不一致";
				break;
			default:
				result_info = "操作未执行";
				break;
			}
		}

	}
	/**
	 * 管理修改密码
	 */
	public void pwd(){ 
		Integer id=getRequestParameterForInt("id");
		String pwd=(String) getRequestParameter("pwd");
		String result_info = "";
		if(session.get(USER_INFO)!=null&&((TabUserInfo)session.get(USER_INFO)).getTabRole().getId()==1){
			if(result_info.equals("")){
				//改密码
				userInfoServices.updatePwd(id,pwd);
				result_info="修改成功";
			}
		}else{
			result_info="非法操作";
		}
		responseInfo(result_info);
	}
	/**
	 * 修改密码
	 * 
	 * @param o
	 * @param n
	 */
	public void password(String o, String n) {
		String result_info = "";
		if (session.get(USER_INFO) == null) {
			result_info = "用户未登录";
		} 
		else if(o.equals(n)){
			result_info = "2次输入的密码一致,未修改";
		}
		else {
			TabUserInfo userInfo = userInfoServices.checkLogin(((TabUserInfo) session.get(USER_INFO)).getUserId(), o);
			if (!userInfo.isLogin()) {
				result_info = userInfo.getLogin_result();
			} else {
				Integer r = userInfoServices.update(userInfo, userInfo.getUserId(), n, null, null, null, null, null);
				switch (r) {
				case -1:
					result_info = "用户信息不存在";
					break;
				case 0:
					result_info = "修改密码失败,请重试";
					break;
				case 1:
					result_info = "修改成功";
					break;
				case 2:
					result_info = "账号信息不一致";
					break;
				default:
					result_info = "操作未执行";
					break;
				}
			}
		
		}
	}
	
	
	
	public String index(){
		return SUCCESS;
	}
	
	
	public void user_list() {
		// 从请求中获取经过滤器封装好的 bootstrap请求对象
		PageModel pageModel = new PageModel();
		String list_json = userInfoServices.list_json();
		responseInfo(list_json);
	}
	
	
	public UserInfoServices getUserInfoServices() {
		return userInfoServices;
	}
	public void setUserInfoServices(UserInfoServices userInfoServices) {
		this.userInfoServices = userInfoServices;
	}
	public static String getUSER_INFO() {
		return USER_INFO;
	}
	public static void setUSER_INFO(String uSER_INFO) {
		USER_INFO = uSER_INFO;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
