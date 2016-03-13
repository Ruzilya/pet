package ru.kpfu.itis.pet.g2048.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.kpfu.itis.pet.g2048.model.User;
import ru.kpfu.itis.pet.g2048.service.UserService;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/results", method = RequestMethod.GET)
    public String users(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.users());
        return "results";
    }
}
