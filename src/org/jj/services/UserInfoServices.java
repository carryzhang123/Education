package org.jj.services;

import java.util.List;

import com.li.utils.bootstrapTable.PageModel;
import org.jj.model.TabRole;
import org.jj.model.TabUserInfo;

/**
 * �û���Ϣservices
 * @author Halo
 *
 */
public interface UserInfoServices {
	/**
	 *  
	 * 
	 * @param user_id
	 * @param user_password
	 * @param user_name
	 * @param user_sex
	 * @param user_age
	 * @param user_address
	 * @param user_address_city
	 * @param user_role
	 * @return return user register result, result type: -1 is commond error,0 is proterty error,1 is success,2 is too many id.
	 */
	public Integer register(String user_id,String user_password,String user_name,String user_sex,String user_age,String user_address,Integer user_address_city,Integer user_role);

	public TabUserInfo checkLogin(String user_id, String user_password);

	public Integer update(TabUserInfo oldUserInfo, String user_id, String user_password, String user_name, String user_sex,
						  String user_age, String user_address, Integer user_address_city);

	public List<TabRole> role_list();

	public PageModel loadList(PageModel pageModel);

	public void updatePwd(Integer id, String pwd);

	public String list_json();

}
