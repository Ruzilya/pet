package ru.kpfu.itis.pet.g2048.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.pet.g2048.dao.RoleDao;
import ru.kpfu.itis.pet.g2048.model.Role;
import ru.kpfu.itis.pet.g2048.service.RoleService;

/**
 * Created by RuzilyaS on 15-May-16.
 */
@Service
@Transactional
public class RoleServiceImpl implements RoleService{
    @Autowired
    private RoleDao roleDao;

    public Role getRole(long id) {
        return roleDao.findById(id);
    }
}
