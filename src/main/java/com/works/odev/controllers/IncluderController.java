package com.works.odev.controllers;

import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IncluderController {
    final Util util;

    public IncluderController(Util util){
        this.util=util;

    }
    @GetMapping("/navmenu")
    public String navmenu(Model model){
        model.addAttribute("user", util.info());
        return "inc/navmenu";
    }


}
