package ru.kpfu.itis.pet.g2048.dao.impl;

import org.springframework.stereotype.Repository;
import ru.kpfu.itis.pet.g2048.dao.UserDao;
import ru.kpfu.itis.pet.g2048.model.User;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Repository
public class UserDaoImpl extends GenericDaoImpl<User,Long> implements UserDao {
    public UserDaoImpl() {
        setaClass(User.class);
    }
}
