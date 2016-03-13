package ru.kpfu.itis.pet.g2048.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
public interface GenericDao<T, I extends Serializable> {

    T findById(I id);

    List<T> findAll();

    void save(T entity);

    void update(T entity);

    void delete(T entity);
}
