package org.jj.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabNotice;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabNotice entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.jj.dao.TabNotice
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabNoticeDAO {
	private static final Logger log = LoggerFactory.getLogger(TabNoticeDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String INFO = "info";
	public static final String PUBLISH_TIME = "publishTime";

	private SessionFactory sessionFactory;
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
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(TabNotice transientInstance) {
		log.debug("saving TabNotice instance");
		try {
			getCurrentSession().saveOrUpdate(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TabNotice persistentInstance) {
		log.debug("deleting TabNotice instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabNotice findById(java.lang.Integer id) {
		log.debug("getting TabNotice instance with id: " + id);
		try {
			TabNotice instance = (TabNotice) getCurrentSession().get("org.jj.model.TabNotice", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabNotice instance) {
		log.debug("finding TabNotice instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabNotice").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabNotice instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabNotice as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByInfo(Object info) {
		return findByProperty(INFO, info);
	}

	public List findByPublishTime(Object publishTime) {
		return findByProperty(PUBLISH_TIME, publishTime);
	}

	public List findAll() {
		log.debug("finding all TabNotice instances");
		try {
			String queryString = "from TabNotice";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TabNotice merge(TabNotice detachedInstance) {
		log.debug("merging TabNotice instance");
		try {
			TabNotice result = (TabNotice) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TabNotice instance) {
		log.debug("attaching dirty TabNotice instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabNotice instance) {
		log.debug("attaching clean TabNotice instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TabNoticeDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabNoticeDAO) ctx.getBean("TabNoticeDAO");
	}

	public Integer delete(Integer id) {
		log.debug("delete info by id to sql");
		try {
			SQLQuery q=getCurrentSession().createSQLQuery("delete from tab_notice where id = "+id);
			log.debug("delete successful");
			return q.executeUpdate();
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	@SuppressWarnings("unchecked")
	public List<TabNotice> findTitleList() {
		log.debug("finding all TabNotice instances");
		try {
			String queryString = "select new Link(id,title) from TabNotice";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
}