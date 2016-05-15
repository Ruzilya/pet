package ru.kpfu.itis.pet.g2048.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.kpfu.itis.pet.g2048.dao.GenericDao;

import java.io.Serializable;
import java.util.List;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
public abstract class GenericDaoImpl<T, I extends Serializable> implements GenericDao<T, I> {

    private Class<T> aClass;

    private SessionFactory sessionFactory;

    public Class<T> getaClass() {
        return aClass;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Query createQuery(String query) {
        return getSession().createQuery(query);
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public void setaClass(Class<T> aClass) {
        this.aClass = aClass;
    }
    @Override
    public T findById(I id) {
        return (T) getSession().get(aClass, id);
    }
    @Override
    public List<T> findAll() {
        return getSession().createQuery("from " + aClass.getName()).list();
    }
    @Override
    public void save(T entity) {
        getSession().persist(entity);
    }
    @Override
    public void update(T entity) {
        getSession().merge(entity);
        getSession().flush();
    }
    @Override
    public void delete(T entity) {
        getSession().delete(entity);
    }

    public T uniqueResult(Query query) {
        return (T) query.uniqueResult();
    }

    protected Criteria createEntityCriteria(){
        return getSession().createCriteria(getaClass());
    }
}

