package com.controller;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.model.User;
import com.mysql.jdbc.Blob;
import com.services.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.ServletRequestWrapper;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;


/**
 * Created by root on 13/7/17.
 */


@Controller
public class UserRegistrationController {

    //    @Autowired
//    UserDao userDao;
    @Autowired
    UserServiceImpl userService;



    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView start_loginpage() {
        ModelAndView modelAndView = new ModelAndView("Home_Page");
        return modelAndView;
    }



    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView registration(@ModelAttribute User user, @RequestParam("file") MultipartFile[] fileupload, HttpServletRequest request, HttpSession session) throws IOException, ServletException {

        int counter = 0;
        boolean check;
        ModelAndView modelAndView = null;

        try {

        modelAndView = new ModelAndView();
        modelAndView.setViewName("Home_Page");
        

        if (user.getPassword().compareTo("") == 0){
            modelAndView.addObject("password_msg","*empty field");
            counter++;
        }
       else if(request.getParameter("confirm_password").compareTo("") == 0)
        {
            modelAndView.addObject("confirmpassword_msg","*empty field");
            counter++;
        }
        else{

            int compare = user.getPassword().compareTo(request.getParameter("confirm_password"));

            if(compare != 0) {
                modelAndView.addObject("password_mismatch_msg", "*password mismatch");
                counter++;
            }
        }





            if (counter == 0) {



                modelAndView = new ModelAndView();
                modelAndView.setViewName("redirect:/dashboard");

                if(user != null) {
                    userService.userImageUpload(fileupload, user);
                    check = userService.addUser(user);


                    if (check == true) {

                        session.setAttribute("session", user);

                    } else {
                        modelAndView.setViewName("Home_Page");
                        modelAndView.addObject("username_msg", "invalid");
                        modelAndView.addObject("email_msg", "invalid");

                    }
                }else
                {
                    modelAndView.setViewName("Home_Page");
                }
            }
        }
        catch (Exception e)
        {
            System.out.println(e);

        }
        return modelAndView;


    }
}
