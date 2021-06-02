package com.works.odev.controllers;

import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SettingsController {
    final Util util;
    public SettingsController(Util util){
        this.util=util;
    }
    @GetMapping("/settings")
    public String settings(){
        return util.control("settings");
    }
}
