package com.controller;

import com.model.Topic;
import com.model.User;
import com.services.resourceServiceImpl;
import com.services.topicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.List;

/**
 * Created by root on 21/7/17.
 */

@Controller
public class ResourceController {

    @Autowired
    resourceServiceImpl resourceService;

    @Autowired
    topicServiceImpl topicService;

@RequestMapping(value = "/shareLink", method = RequestMethod.GET)
    public ModelAndView sharelink(@RequestParam("url") String url,
                                  @RequestParam("description") String description,
                                  @RequestParam("topic") String topicname, HttpSession session){

    User user=null;
    boolean check=true;
    Topic topic = null;
    List list = null;

    user = (User) session.getAttribute("session");
    ModelAndView modelAndView = new ModelAndView("redirect:/dashboard");

    list = (List) session.getAttribute("topiclist");

    Iterator iterator = list.iterator();
    while (iterator.hasNext())
    {
        Object o = (Object) iterator.next();
        Topic topic1 = (Topic) o;

        if(topic1.getTopicname().compareTo(topicname) == 0)
        {
            topic = topic1;
        }
    }
    check = resourceService.addLinkResource(user,topic,url,description);
    if (check == true)
    {
        System.out.println("link resource controller get true");
        }
    else
    {
        System.out.println("link resource controller get false");
       }
    return modelAndView;
    }

}
