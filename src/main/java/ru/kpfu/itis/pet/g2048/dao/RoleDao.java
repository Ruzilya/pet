package ru.kpfu.itis.pet.g2048.dao;

import ru.kpfu.itis.pet.g2048.model.Role;

/**
 * Created by RuzilyaS on 12-May-16.
 */
public interface RoleDao extends GenericDao<Role,Long>  {
    public Role findByName(String name);
}
