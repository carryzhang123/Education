package org.jj.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabUserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

import com.alibaba.fastjson.JSONObject;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabUserInfo entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see org.jj.dao.TabUserInfo
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabUserInfoDAO {
	private static final Logger log = LoggerFactory.getLogger(TabUserInfoDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String USER_PASSWORD = "userPassword";
	public static final String USER_NAME = "userName";
	public static final String USER_SEX = "userSex";
	public static final String USER_AGE = "userAge";
	public static final String USER_ADDRESS = "userAddress";
	public static final String USER_RESUME_FILE = "userResumeFile";
	public static final String USER_IS_EXAMINE = "userIsExamine";
	public static final String USER_RESUME_IS_SHOW = "userResumeIsShow";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(TabUserInfo transientInstance) {
		log.debug("saving TabUserInfo instance");
		try {
			getCurrentSession().saveOrUpdate(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void delete(TabUserInfo persistentInstance) {
		log.debug("deleting TabUserInfo instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabUserInfo findById(java.lang.Integer id) {
		log.debug("getting TabUserInfo instance with id: " + id);
		try {
			TabUserInfo instance = (TabUserInfo) getCurrentSession().get("org.jj.model.TabUserInfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabUserInfo instance) {
		log.debug("finding TabUserInfo instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabUserInfo").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabUserInfo instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabUserInfo as model where " + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (Exception re) {
			re.printStackTrace();
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByUserPassword(Object userPassword) {
		return findByProperty(USER_PASSWORD, userPassword);
	}

	public List findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List findByUserSex(Object userSex) {
		return findByProperty(USER_SEX, userSex);
	}

	public List findByUserAge(Object userAge) {
		return findByProperty(USER_AGE, userAge);
	}

	public List findByUserAddress(Object userAddress) {
		return findByProperty(USER_ADDRESS, userAddress);
	}

	public List findByUserResumeFile(Object userResumeFile) {
		return findByProperty(USER_RESUME_FILE, userResumeFile);
	}

	public List findByUserIsExamine(Object userIsExamine) {
		return findByProperty(USER_IS_EXAMINE, userIsExamine);
	}

	public List findByUserResumeIsShow(Object userResumeIsShow) {
		return findByProperty(USER_RESUME_IS_SHOW, userResumeIsShow);
	}

	public List findAll() {
		log.debug("finding all TabUserInfo instances");
		try {
			String queryString = "from TabUserInfo";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			re.printStackTrace();
			log.error("find all failed", re);
			throw re;
		}finally{
		}
	}
	public String findAllToJson() {
		log.debug("finding all TabUserInfo instances");
		try {
			String queryString = "from TabUserInfo";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return JSONObject.toJSONString(queryObject.list());
		} catch (RuntimeException re) {
			re.printStackTrace();
			log.error("find all failed", re);
			throw re;
		}finally{
		}
	}
	public void update(Object detachedInstance) {
		log.debug("update "+detachedInstance.getClass());
		try {
			getCurrentSession().update(detachedInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public Object merge(Object detachedInstance) {
		log.debug("merging "+detachedInstance.getClass());
		try {
			Object result = (Object) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}
	public void attachDirty(TabUserInfo instance) {
		log.debug("attaching dirty TabUserInfo instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabUserInfo instance) {
		log.debug("attaching clean TabUserInfo instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	public static TabUserInfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabUserInfoDAO) ctx.getBean("TabUserInfoDAO");
	}
	public int countByUserId(String user_id){
		log.debug("count user num by user id");
		try {
			String sql = "select count(1) from TabUserInfo as model where model."+USER_ID+"=?";
			SQLQuery sqlQuery=getCurrentSession().createSQLQuery(sql);
			sqlQuery.setParameter(0, user_id);
			return ((Long)sqlQuery.uniqueResult()).intValue();
		} catch (RuntimeException re) {
			log.error("count By User Id", re);
			throw re;
		}
	}
}