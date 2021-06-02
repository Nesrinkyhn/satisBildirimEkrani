package com.works.odev.controllers;

import com.works.odev.entities.FaaliyetAlani;
import com.works.odev.repositories.FaaliyetRepository;
import com.works.odev.repositories.NoteRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class FaaliyetController {
    final Util util;
    final FaaliyetRepository faalRepo;

    public FaaliyetController(Util util, FaaliyetRepository faalRepo) {
        this.util = util;
        this.faalRepo = faalRepo;
    }
    @GetMapping("/faaliyetalaniekle")
    public String faaliyetalaniekle(Model model){
        if(status){
            model.addAttribute("status",status);
            status=false;
        }
        model.addAttribute("faaliyetler",faalRepo.findAll());
        return util.control("faaliyetalaniekle");

    }

    boolean status =false;
    @PostMapping("/FaaliyetEkle")
    public String FaaliyetEkle(FaaliyetAlani faaliyetAlani){

        if(faalRepo.save(faaliyetAlani)!= null){
            status=true;
            return "redirect:/faaliyetalaniekle";
        }
        return util.control("faaliyetalaniekle");


    }



    @GetMapping("/faaliyetSil/{fid}")
    public String faaliyetSil(@PathVariable String fid){
        try {
            int convertFid=Integer.parseInt(fid);
            faalRepo.deleteById(convertFid);
            return "redirect:/faaliyetalaniekle";
        }catch (Exception ex){

        }
        util.logout();
        return "redirect:/";
    }
}
