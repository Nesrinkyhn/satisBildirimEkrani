package com.works.odev.controllers;


import com.works.odev.entities.User;
import com.works.odev.repositories.UserRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


    @Controller
    public class UserController {
        final Util util;
        final UserRepository userRepo;

        public UserController(Util util, UserRepository userRepo) {
            this.util = util;
            this.userRepo = userRepo;
        }

        @GetMapping("/kullaniciekle")
        public String kullaniciekle(Model model) {
            if (status) {
                model.addAttribute("status", status);
                status = false;
            }
            model.addAttribute("kullanici", userRepo.findAll());
            return util.control("kullaniciekle");
        }

        boolean status = false;

        @PostMapping("/kullaniciEkle")
        public String kullaniciEkle(User kullanici) {

            if (userRepo.save(kullanici) != null) {
                status = true;
                return "redirect:/kullaniciekle";
            }
            return util.control("kullaniciekle");


        }


        @GetMapping("/kullaniciSil/{uid}")
        public String kullaniciSil(@PathVariable String uid) {
            try {
                int convertuid = Integer.parseInt(uid);
                userRepo.deleteById(convertuid);
                return "redirect:/kullaniciekle";
            } catch (Exception ex) {

            }
            util.logout();
            return "redirect:/";
        }
    }
