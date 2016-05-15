package ru.kpfu.itis.pet.g2048.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ru.kpfu.itis.pet.g2048.dao.RoleDao;
import ru.kpfu.itis.pet.g2048.model.Role;
import ru.kpfu.itis.pet.g2048.model.User;

/**
 * Created by RuzilyaS on 12-May-16.
 */
@Repository
public class RoleDaoImpl extends GenericDaoImpl<Role,Long> implements RoleDao {
    public RoleDaoImpl() {
            setaClass(Role.class);
        }

    @Override
    public Role findByName(String name) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("name", name));
        return (Role) crit.uniqueResult();
    }
}
