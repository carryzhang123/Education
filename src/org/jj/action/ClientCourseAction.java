package org.jj.action;

import java.util.List;

import org.jj.model.TabCourse;
import org.jj.services.ClientCourseServices;
import org.jj.utils.BaseAction;
import org.jj.utils.Time;

import com.alibaba.fastjson.JSONObject;

/**
 * 课程信息管理
 * @author Halo
 *
 */
public class ClientCourseAction extends BaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7688284887435567583L;
	
	ClientCourseServices courseServices;
	
	
	
	public ClientCourseServices getCourseServices() {
		return courseServices;
	}
	public void setCourseServices(ClientCourseServices courseServices) {
		this.courseServices = courseServices;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String index(){
		return SUCCESS;
	}
	/**
	 * 查询课程列表
	 */
	public void list(){
		
	}
	/**
	 * 查询课程列表
	 * TODO 备用方法
	 * response json data
	 */
	public void course_list(){
		List<TabCourse> list=courseServices.list();
		responseInfo(JSONObject.toJSONString(list));
	}
	
	/**
	 * 添加课程 ,管理员权限
	 * @param course 课程名称
	 */
	public void add(String course){
		@SuppressWarnings("unused")
		String addTime=Time.getNowTime();
		
	}
	/**
	 * 删除课程,管理员权限
	 * @param course_id
	 */
	public void del(Integer course_id){
		
	}
	/**
	 * 修改课程信息, 管理员权限
	 * @param course_id
	 * @param course
	 */
	public void update(Integer course_id,String course){
		
	}
	/**
	 * 获取指导当前课程的老师
	 * @param course_id 课程编号
	 */
	public void findTeachers(Integer course_id){
		
	}
	/**
	 * 选择/取消课程
	 * @param course_id 课程编号
	 * @param state 0:no check 1:checked
	 */
	public void choiceCourse(Integer course_id,Integer state){
		
	}
	
}
