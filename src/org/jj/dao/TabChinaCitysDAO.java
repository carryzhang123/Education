package org.jj.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.jj.model.TabChinaCitys;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

/**
 * A data access object (DAO) providing persistence and search support for
 * TabChinaCitys entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see org.jj.dao.TabChinaCitys
 * @author MyEclipse Persistence Tools
 */
@SuppressWarnings("rawtypes")
public class TabChinaCitysDAO {
	private static final Logger log = LoggerFactory.getLogger(TabChinaCitysDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String PID = "pid";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
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
	protected void initDao() {
		// do nothing
	}

	public void save(TabChinaCitys transientInstance) {
		log.debug("saving TabChinaCitys instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TabChinaCitys persistentInstance) {
		log.debug("deleting TabChinaCitys instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TabChinaCitys findById(java.lang.Integer id) {
		log.debug("getting TabChinaCitys instance with id: " + id);
		try {
			TabChinaCitys instance = (TabChinaCitys) getCurrentSession().get("org.jj.model.TabChinaCitys", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TabChinaCitys instance) {
		log.debug("finding TabChinaCitys instance by example");
		try {
			List results = getCurrentSession().createCriteria("org.jj.model.TabChinaCitys").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TabChinaCitys instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from TabChinaCitys as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByPid(Object pid) {
		return findByProperty(PID, pid);
	}

	public List findAll() {
		log.debug("finding all TabChinaCitys instances");
		try {
			String queryString = "from TabChinaCitys";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TabChinaCitys merge(TabChinaCitys detachedInstance) {
		log.debug("merging TabChinaCitys instance");
		try {
			TabChinaCitys result = (TabChinaCitys) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TabChinaCitys instance) {
		log.debug("attaching dirty TabChinaCitys instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TabChinaCitys instance) {
		log.debug("attaching clean TabChinaCitys instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TabChinaCitysDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TabChinaCitysDAO) ctx.getBean("TabChinaCitysDAO");
	}
}