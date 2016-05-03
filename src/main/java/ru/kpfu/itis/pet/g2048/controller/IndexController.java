package ru.kpfu.itis.pet.g2048.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by RuzilyaS on 21-Mar-16.
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String users(HttpServletRequest request) {
        return "index";
    }

}
