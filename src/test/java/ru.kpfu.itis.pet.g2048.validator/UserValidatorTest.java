package ru.kpfu.itis.pet.g2048.validator;

import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.Errors;
import ru.kpfu.itis.pet.g2048.model.User;
import static org.junit.Assert.*;

/**
 * Created by RuzilyaS on 21-May-16.
 */
@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations={"classpath:spring-security.xml","classpath:servlet-context.xml"})
public class UserValidatorTest {

    @Autowired
    private UserValidator userValidator;

    private User user;

    @Before
    public void beforeTest(){
        String username="User1";
        String password = "password1";
        user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setPasswordConfirm(password);
    }

    @Test
    public void emptyUsernameValidateTest(){
        user.setUsername("");
        String objectName = "userForm";
        Errors errors = new BeanPropertyBindingResult(user, objectName);
        userValidator.validate(user, errors);

        assertEquals(errors.getErrorCount(), 2);

        assertEquals(errors.getAllErrors().get(0).getObjectName(), objectName);
        assertEquals(errors.getAllErrors().get(0).getCode(),"NotEmpty");

        assertEquals(errors.getAllErrors().get(1).getObjectName(), objectName);
        assertEquals(errors.getAllErrors().get(1).getCode(),"Size.userForm.username");
    }
}
