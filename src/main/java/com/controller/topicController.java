package com.controller;

import com.model.Topic;
import com.model.Topic.Visibility;
import com.model.User;
import com.services.UserServiceImpl;
import com.services.subscriptionServiceImpl;
import com.services.topicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created by root on 19/7/17.
 */
@Controller
public class topicController {

    @Autowired
    topicServiceImpl topicserviceimpl;

    @Autowired
    subscriptionServiceImpl subscriptionService;



    @RequestMapping(value = "/create_topic", method = RequestMethod.POST)
    public ModelAndView createTopic(@ModelAttribute Topic topic,@RequestParam("visibility") String visible ,HttpServletRequest request, HttpSession session) {
        boolean check;
        ModelAndView modelAndView = null;
        try {

            modelAndView = new ModelAndView("redirect:/dashboard");

            User user = (User) session.getAttribute("session");
            if(user == null)
            {
                System.out.println("user obj is null");
                modelAndView = new ModelAndView("Home_Page");
            }
            else {
                modelAndView.addObject("user_name", user.getFname().concat(" ").concat(user.getLname()));
                topic.setUserobj(user);

                topic.setTopicdateCreated(new Date());
                topic.setTopiclastUpdated(new Date());
                topic.setVisiblity(Visibility.valueOf(visible));


                check = topicserviceimpl.addtopic(topic);
                subscriptionService.addSubscriber(user, topic, "VerySerious");
            }

        } catch (Exception e) {
            System.out.println("prob in createtopic " + e);
        }

        return modelAndView;
    }
}
