package com.controller;

import com.model.Topic;
import com.model.User;
import com.services.subscriptionServiceImpl;
import com.services.topicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by root on 21/7/17.
 */

@Controller
public class DashboardPageController {

    @Autowired
    topicServiceImpl topicService;

    @Autowired
    subscriptionServiceImpl subscriptionService;

    @RequestMapping(value = "/dashboard" , method = RequestMethod.GET)
    public ModelAndView dashboard(ModelAndView modelAndView, HttpSession session) {
        User user = null;
        List list = null;
        ArrayList<String> arrayList = new ArrayList<String>();
        Long topicCount, subscriptionCount;


        modelAndView.setViewName("DashBoard");
        user = (User) session.getAttribute("session");
        modelAndView.addObject("user_name", user.getFname().concat(" ").concat(user.getLname()));
        modelAndView.addObject("name", user.getUsername());

        topicCount = topicService.getTopicCount(user.getUsername());
        modelAndView.addObject("topicCount",topicCount);

        subscriptionCount = subscriptionService.getSubscriptionCount(user.getUsername());
        modelAndView.addObject("subscriptionCount",subscriptionCount);


        list = topicService.getTopiclist(user.getUsername());
        session.setAttribute("topiclist",list);

        if (list != null) {
            Iterator it = list.iterator();

            while (it.hasNext()) {
                Object o = (Object) it.next();
                Topic topic = (Topic) o;
                arrayList.add(topic.getTopicname());
            }

            modelAndView.addObject("topiclist", arrayList);
        }

        return modelAndView;
    }
}
