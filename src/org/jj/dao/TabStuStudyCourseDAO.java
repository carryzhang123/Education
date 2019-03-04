package org.jj.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabStuStudyCourse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabStuStudyCourse entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabStuStudyCourseDAO {
	private static final Logger log = LoggerFactory.getLogger(TabStuStudyCourseDAO.class);
	// property constants
	public static final String COURSE_ID = "courseId";
	public static final String NOTE = "note";
	public static final String PUBLISH_TIME = "publishTime";
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

	public void save(TabStuStudyCourse transientInstance) {
		log.debug("saving TabStuStudyCourse instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TabStuStudyCourse persistentInstance) {
		log.debug("deleting TabStuStudyCourse instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabStuStudyCourse findById(java.lang.Integer id) {
		log.debug("getting TabStuStudyCourse instance with id: " + id);
		try {
			TabStuStudyCourse instance = (TabStuStudyCourse) getCurrentSession().get("org.jj.model.TabStuStudyCourse",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabStuStudyCourse instance) {
		log.debug("finding TabStuStudyCourse instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabStuStudyCourse")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabStuStudyCourse instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabStuStudyCourse as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCourseId(Object courseId) {
		return findByProperty(COURSE_ID, courseId);
	}

	public List findByNote(Object note) {
		return findByProperty(NOTE, note);
	}

	public List findByPublishTime(Object publishTime) {
		return findByProperty(PUBLISH_TIME, publishTime);
	}

	public List findAll() {
		log.debug("finding all TabStuStudyCourse instances");
		try {
			String queryString = "from TabStuStudyCourse";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TabStuStudyCourse merge(TabStuStudyCourse detachedInstance) {
		log.debug("merging TabStuStudyCourse instance");
		try {
			TabStuStudyCourse result = (TabStuStudyCourse) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TabStuStudyCourse instance) {
		log.debug("attaching dirty TabStuStudyCourse instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabStuStudyCourse instance) {
		log.debug("attaching clean TabStuStudyCourse instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TabStuStudyCourseDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabStuStudyCourseDAO) ctx.getBean("TabStuStudyCourseDAO");
	}
}