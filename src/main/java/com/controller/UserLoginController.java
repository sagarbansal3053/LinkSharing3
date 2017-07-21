package com.controller;

import com.model.User;
import com.services.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by root on 18/7/17.
 */

@Controller
public class UserLoginController {

    @Autowired
    UserServiceImpl userService;


    @RequestMapping(value = "/Login" , method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password, HttpSession session)
    {
        ModelAndView modelAndView = null;
        User user = null;
        try {
            boolean check = userService.userLogin(username, password);
            if (check == true) {
                modelAndView = new ModelAndView("redirect:/dashboard");

                user = userService.getUserDetails(username);
                session.setAttribute("session",user);


            } else {
                modelAndView = new ModelAndView("Home_Page");
                modelAndView.addObject("loginInvalidMsg", "either username/password is invalid");
            }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request, ModelAndView modelAndView)
    {
        HttpSession session = request.getSession(false);
        session.invalidate();
        modelAndView.setViewName("Home_Page");

        System.out.println("logout entered");
        return modelAndView;
    }


    @RequestMapping(value = "/checkusername" , method = RequestMethod.POST)
    public String checkUsernameValidity()
    {
       System.out.println("worked");

        return "worked";

    }

    @RequestMapping(value = "/test" , method = RequestMethod.GET)
    public String test()
    {
        System.out.println("in test fn ");
        return "<h1>test worked</h1>";

    }
}
