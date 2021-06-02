package com.works.odev.utils;

import com.works.odev.entities.User;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Service
public class Util {
    final HttpServletRequest req;

    public Util(HttpServletRequest req){
        this.req=req;
    }
    public String control(String page){
        boolean status = req.getSession().getAttribute("user")==null;


        if (!status){
            return page;
        }


        return "redirect:/";

    }
    public User info(){
        User us =new User();

        Object objUser = req.getSession().getAttribute("user");

        if(objUser != null){
            if(objUser instanceof User){
                us=(User) objUser;
            }

        }

        return us;
    }
    public String logout(){
        req.getSession().invalidate();
        req.getSession().removeAttribute("user");


        return "redirect:/";
    }


}
