package com.controller;

import com.services.subscriptionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by root on 20/7/17.
 */

@Controller
public class subscriptionController {

    @Autowired
    subscriptionServiceImpl subscriptionService;
/*    @RequestMapping(value = "/subscribe", method = RequestMethod.GET)
    public ModelAndView subscribe(ModelAndView modelAndView,)
    {

    }*/
}
