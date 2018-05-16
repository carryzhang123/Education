package org.jj.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabComment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabComment entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.jj.dao.TabComment
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabCommentDAO {
	private static final Logger log = LoggerFactory.getLogger(TabCommentDAO.class);
	// property constants
	public static final String COMMENT = "comment";
	public static final String PUBLISH_TIME = "publishTime";
	public static final String IS_DEL = "isDel";

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

	public void save(TabComment transientInstance) {
		log.debug("saving TabComment instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TabComment persistentInstance) {
		log.debug("deleting TabComment instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabComment findById(java.lang.Integer id) {
		log.debug("getting TabComment instance with id: " + id);
		try {
			TabComment instance = (TabComment) getCurrentSession().get("org.jj.model.TabComment", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabComment instance) {
		log.debug("finding TabComment instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabComment").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabComment instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabComment as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByComment(Object comment) {
		return findByProperty(COMMENT, comment);
	}

	public List findByPublishTime(Object publishTime) {
		return findByProperty(PUBLISH_TIME, publishTime);
	}

	public List findByIsDel(Object isDel) {
		return findByProperty(IS_DEL, isDel);
	}

	public List findAll() {
		log.debug("finding all TabComment instances");
		try {
			String queryString = "from TabComment";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TabComment merge(TabComment detachedInstance) {
		log.debug("merging TabComment instance");
		try {
			TabComment result = (TabComment) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TabComment instance) {
		log.debug("attaching dirty TabComment instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabComment instance) {
		log.debug("attaching clean TabComment instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TabCommentDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabCommentDAO) ctx.getBean("TabCommentDAO");
	}
}