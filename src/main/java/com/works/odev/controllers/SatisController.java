package com.works.odev.controllers;

import com.works.odev.entities.Satis;
import com.works.odev.repositories.SatisRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SatisController {
    final Util util;
    final SatisRepository satisRepo;
    public SatisController(Util util, SatisRepository satisRepo){
        this.util=util;
        this.satisRepo=satisRepo;



    }
    boolean status =false;
    @GetMapping("/satis")
    public String satis(Model model){
        if(status){
            model.addAttribute("status",status);
            status=false;
        }
        model.addAttribute("satis",satisRepo.findAll());
        return util.control("satisekle");
    }
@PostMapping("/satisEkle")
    public String satisEkle(Satis satis){
        if(satisRepo.save(satis)!= null){
            status=true;
            return "redirect:/satis";
        }
    return util.control("satis");

}

@GetMapping("/satisSil/{satisid}")
    public String satisSil(@PathVariable String satisid){
        try {
            int convertsatisid=Integer.parseInt(satisid);
            satisRepo.deleteById(convertsatisid);
            return "redirect:/satis";
        }catch (Exception ex){

        }
        util.logout();
        return "redirect:/";
}
}
