package com.controller;

import com.model.User;
import com.services.subscriptionServiceImpl;
import com.services.topicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by root on 21/7/17.
 */

@Controller
public class EditProfilePageController {

    @Autowired
    topicServiceImpl topicService;

    @Autowired
    subscriptionServiceImpl subscriptionService;

    @RequestMapping(value = "/editprofile", method = RequestMethod.GET)
    public ModelAndView editprofile(HttpSession session)
    {
        User user = null;
        Long topicCount, subscriptionCount;

        ModelAndView modelAndView= new ModelAndView("editProfile");

        user = (User) session.getAttribute("session");
        modelAndView.addObject("user_name",user.getFname().concat(" ").concat(user.getLname()));
        modelAndView.addObject("name", user.getUsername());

        topicCount = topicService.getTopicCount(user.getUsername());
        modelAndView.addObject("topicCount",topicCount);

        subscriptionCount = subscriptionService.getSubscriptionCount(user.getUsername());
        modelAndView.addObject("subscriptionCount",subscriptionCount);

        return modelAndView;
    }
}
