package com.works.odev.controllers;

import com.works.odev.entities.User;
import com.works.odev.repositories.UserRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
public class HomeController {
    final UserRepository uRepo;
    final HttpServletRequest req;
    final Util util;
    public HomeController(UserRepository uRepo ,HttpServletRequest req, Util util){
        this.uRepo=uRepo;
        this.req= req;
        this.util=util;
    }
    String error ="";
    @GetMapping({"","/"})
    public String home(Model model){
        if(!error.equals("")){
            model.addAttribute("error",error);
            error="";
        }
        return "home";
    }
    @PostMapping("/userLogin")
    public String userLogin(User user){
        if(user.getEmail().equals("")|| user.getPassword().equals("")){
            error="Email or Password Fail";
        }else {
            Optional<User> opt = uRepo.findByEmailAndPassword(user.getEmail(), user.getPassword());
            if (opt.isPresent()) {
                req.getSession().setAttribute("user", opt.get());
                String userRol=user.getRol();
                return "redirect:/satis";
            } else {
                error = "Email or Password Fail";
            }
        }

        return "redirect:/";
    }
    @GetMapping("/logout")
    public String logout(){
        return util.logout();

    }
}
