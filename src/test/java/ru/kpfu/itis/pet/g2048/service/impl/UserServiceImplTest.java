package ru.kpfu.itis.pet.g2048.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.kpfu.itis.pet.g2048.dao.UserDao;
import ru.kpfu.itis.pet.g2048.dao.impl.UserDaoImpl;
import ru.kpfu.itis.pet.g2048.model.User;
import ru.kpfu.itis.pet.g2048.service.UserService;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;

/**
* Created by RuzilyaS on 21-May-16.
*/
@RunWith(MockitoJUnitRunner.class)
@ContextConfiguration(locations = {"classpath*:**/servlet-context.xml", "classpath*:**/spring-security.xml"})
public class UserServiceImplTest {

    @InjectMocks
    private UserServiceImpl userService;

    @Mock
    UserDao userDao;

    @Test
    public void findByUsernameTest(){
        String username = "User1";
        User user = new User();
        user.setUsername(username);

        when(userDao.findByUsername(username)).thenReturn(user);

        User foundUser = userService.findByUsername(username);
        assertEquals(user.getUsername(), foundUser.getUsername());
    }
}
