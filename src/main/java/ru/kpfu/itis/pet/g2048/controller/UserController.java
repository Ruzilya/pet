package ru.kpfu.itis.pet.g2048.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.kpfu.itis.pet.g2048.model.User;
import ru.kpfu.itis.pet.g2048.service.SecurityService;
import ru.kpfu.itis.pet.g2048.service.UserService;
import ru.kpfu.itis.pet.g2048.validator.UserValidator;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private PasswordEncoder encoder;

    @RequestMapping(value = "/results", method = RequestMethod.GET)
    public String users(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.users());
        return "results";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
//        userForm.setPassword(encoder.encode(userForm.getPassword()));
//        userForm.setPasswordConfirm(encoder.encode(userForm.getPasswordConfirm()));

        userValidator.validate(userForm, bindingResult);
        userForm.setPassword(encoder.encode(userForm.getPassword()));

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/index";
    }
}
