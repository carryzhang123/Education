package org.jj.services.impl;

import java.util.List;

import org.jj.dao.TabChinaCitysDAO;
import org.jj.dao.TabRoleDAO;
import org.jj.dao.TabUserInfoDAO;
import org.jj.model.TabChinaCitys;
import org.jj.model.TabRole;
import org.jj.model.TabUserInfo;
import org.jj.services.UserInfoServices;
import org.jj.utils.ListUtil;
import org.jj.utils.Password;

import com.li.utils.bootstrapTable.PageModel;

public class UserInfoServicesImpl implements UserInfoServices{
	
	private TabUserInfoDAO userInfoDAO;
	
	private TabChinaCitysDAO chinaCitysDAO; 
	
	private TabRoleDAO roleDAO;
	
	public Integer register(String user_id, String user_password, String user_name, String user_sex, String user_age,
			String user_address, Integer user_address_city, Integer user_role) {
		Integer result=1;
		if(1!=(result=checkRegister(user_id, user_password, user_name, user_sex, user_age, user_address, user_address_city, user_role))){
			//校验注册信息不通过,返回错误结果
			return result;
		}
		TabUserInfo userInfo =new TabUserInfo();
		userInfo.setUserId(user_id);
		userInfo.setUserPassword(Password.encrypt(user_password));
		userInfo.setUserSex(user_sex);
		userInfo.setUserAge(user_age);
		userInfo.setUserAddress(user_address);
		//获取城市
		TabChinaCitys city=chinaCitysDAO.findById(user_address_city);
		userInfo.setTabChinaCitys(city);
		TabRole role=roleDAO.findById(user_role);
		if(role==null)return 0;
		userInfo.setTabRole(role);
		userInfoDAO.save(userInfo);
		return result;
	}
	
	private int checkRegister(String user_id, String user_password, String user_name, String user_sex, String user_age,
			String user_address, Integer user_address_city, Integer user_role) {
		if(user_id==null)return 0;
		if(user_password==null)return 0;
		if(user_name==null)return 0;
		try {
			Integer.valueOf(user_age);
		} catch (Exception e) {
			return 0;
		}
		if(user_role==0)return 3;
		if(userInfoDAO.countByUserId(user_id)>0)return 2;
		return 1;
	}

	@Override
	public TabUserInfo checkLogin(String user_id, String user_password) {
		@SuppressWarnings("rawtypes")
		List userInfoList=userInfoDAO.findByUserId(user_id);
		TabUserInfo userInfo=(TabUserInfo) (userInfoList!=null&&userInfoList.size()==1?userInfoList.get(0):null);
		if(userInfo==null){
			userInfo=new TabUserInfo();
			userInfo.setLogin_state(false);
			userInfo.setLogin_result("未找到当前用户");
		}else if(userInfo.getUserPassword().equals(user_password)){
			userInfo.setLogin_state(true);
		}else{
			userInfo=new TabUserInfo();
			userInfo.setLogin_state(false);
			userInfo.setLogin_result("用户名/密码有误");
		}
		return userInfo;
	}

	@Override
	public Integer update(TabUserInfo oldUserInfo, String user_id, String user_password, String user_name,
			String user_sex, String user_age, String user_address, Integer user_address_city) {
		if(oldUserInfo==null){
			return -1;
		}
		if(!oldUserInfo.getUserId().equals(user_id)){
			return 2;
		}
		oldUserInfo.setUserPassword(user_password!=null?Password.encrypt(user_password):oldUserInfo.getUserPassword());
		oldUserInfo.setUserName(user_name!=null?user_name:oldUserInfo.getUserName());
		oldUserInfo.setUserSex(user_sex!=null?user_sex:oldUserInfo.getUserSex());
		oldUserInfo.setUserAge(user_age!=null?user_age:oldUserInfo.getUserAge());
		oldUserInfo.setUserAddress(user_address!=null?user_address:oldUserInfo.getUserAddress());
		if(user_address_city!=null){
			//获取城市
			TabChinaCitys city=chinaCitysDAO.findById(user_address_city);
			oldUserInfo.setTabChinaCitys(city);
		}
		userInfoDAO.merge(oldUserInfo);
		return 1;
	}

	public TabUserInfoDAO getUserInfoDAO() {
		return userInfoDAO;
	}

	public void setUserInfoDAO(TabUserInfoDAO userInfoDAO) {
		this.userInfoDAO = userInfoDAO;
	}

	public TabChinaCitysDAO getChinaCitysDAO() {
		return chinaCitysDAO;
	}

	public void setChinaCitysDAO(TabChinaCitysDAO chinaCitysDAO) {
		this.chinaCitysDAO = chinaCitysDAO;
	}

	public TabRoleDAO getRoleDAO() {
		return roleDAO;
	}

	public void setRoleDAO(TabRoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	@Override
	public List<TabRole> role_list() {
		@SuppressWarnings("unchecked")
		List<TabRole> l=roleDAO.findAll();
		l.remove(0);//删除管理员
		return l;
	}

	@Override
	public PageModel loadList(PageModel pageModel) {
		@SuppressWarnings("unchecked")
		List<TabUserInfo> userList=userInfoDAO.findAll();
		for(TabUserInfo u:userList){
			u.setUserPassword(null);
		}
		pageModel.setInfoList(ListUtil.ConvertToObject(userList));
		pageModel.setTotal(userList.size());
		return pageModel;
	}

	@Override
	public void updatePwd(Integer id, String pwd) {
		TabUserInfo u=userInfoDAO.findById(id);
		u.setUserPassword(pwd);
		userInfoDAO.merge(u);
	}

	@Override
	public String list_json() {
		return userInfoDAO.findAllToJson();
	}

}
