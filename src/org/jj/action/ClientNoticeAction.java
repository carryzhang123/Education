package org.jj.action;

import java.util.List;

import org.jj.model.TabNotice;
import org.jj.model.TabUserInfo;
import org.jj.services.ClientNoticeServices;
import org.jj.utils.BaseAction;
import org.jj.utils.Time;

import com.alibaba.fastjson.JSONArray;

public class ClientNoticeAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2215393501048341676L;

	/**
	 * 加载公告列表
	 * TODO 公告信息一般不多,故一次全部加载
	 */
	public void notice_list(){
		List<TabNotice> all=noticeServices.findAll();
		responseInfo(JSONArray.toJSONString(all));
		System.out.println(JSONArray.toJSONString(all));
	}
	/**
	 * 发布公告
	 */
	public void publish(){
		String title=request.getParameter("title");
		String info=request.getParameter("info");
		
		TabUserInfo user=(TabUserInfo)session.get(ClientUserAction.USER_INFO);
		if(user==null){
			responseInfo("用户未登录");
			return;
		}
		if(user.getUserRole()!=1){
			responseInfo("用户权限不足");
			return;
		}
		if(title==null||title.equals("")){
			responseInfo("请输出公告标题");
			return;
		}else{
			TabNotice tn=new TabNotice();
			tn.setInfo(info);
			tn.setPublishTime(Time.getNowTime());
			tn.setPublishUser(((TabUserInfo)session.get(ClientUserAction.USER_INFO)).getId());
			tn.setTitle(title);
			noticeServices.save(tn);
			responseInfo("添加成功");
		}
		
	}
	/**
	 * 删除公告
	 */
	public void del(){
		Integer id=-1;
		try {
			id=Integer.valueOf(request.getParameter("id"));
		} catch (Exception e) {
			responseInfo("参数异常");
			return;
		}
		if(id==-1){
			//未找到当前文章
			responseInfo("未找到当前文章");
			return;
		}else if(noticeServices.del(id)==1){
			//exec del commend and check result
			responseInfo("删除成功");
			return;
		}else{
			//删除失败
			responseInfo("删除失败");
		}
	}
	
	public String show(){
		Integer id=-1;
		try {
			id=Integer.valueOf(request.getParameter("id"));
		} catch (Exception e) {
		
		}
		TabNotice notice=null;
		if(id==-1){
			notice=new TabNotice();
			notice.setTitle("当前文章不存在");
			notice.setInfo("未找到当前文章");
			notice.setPublishTime(Time.getNowTime());
		}else{
			notice=noticeServices.show(id);
		}
		request.setAttribute("notice",notice);
		return SUCCESS;
	}
	ClientNoticeServices noticeServices;

	public ClientNoticeServices getNoticeServices() {
		return noticeServices;
	}
	public void setNoticeServices(ClientNoticeServices noticeServices) {
		this.noticeServices = noticeServices;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
