package org.jj.dao;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabCourse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabCourse entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.jj.dao.TabCourse
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabCourseDAO {
	private static final Logger log = LoggerFactory.getLogger(TabCourseDAO.class);
	// property constants
	public static final String COURSE = "course";
	public static final String ADD_TIME = "addTime";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
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
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(TabCourse transientInstance) {
		log.debug("saving TabCourse instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TabCourse persistentInstance) {
		log.debug("deleting TabCourse instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabCourse findById(java.lang.Integer id) {
		log.debug("getting TabCourse instance with id: " + id);
		try {
			TabCourse instance = (TabCourse) getCurrentSession().get("org.jj.model.TabCourse", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabCourse instance) {
		log.debug("finding TabCourse instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabCourse").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabCourse instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabCourse as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCourse(Object course) {
		return findByProperty(COURSE, course);
	}

	public List findByAddTime(Object addTime) {
		return findByProperty(ADD_TIME, addTime);
	}

	public String findAllToJson() {
		log.debug("finding all TabCourse instances");
		try {
			String queryString = "from TabCourse";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return JSONObject.toJSONString(queryObject.list());
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TabCourse merge(TabCourse detachedInstance) {
		log.debug("merging TabCourse instance");
		try {
			TabCourse result = (TabCourse) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TabCourse instance) {
		log.debug("attaching dirty TabCourse instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabCourse instance) {
		log.debug("attaching clean TabCourse instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TabCourseDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabCourseDAO) ctx.getBean("TabCourseDAO");
	}
}