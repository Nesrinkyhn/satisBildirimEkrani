package com.works.odev.controllers;

import com.works.odev.entities.UrunKodu;
import com.works.odev.repositories.UrunKoduRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UrunKoduController {
    final Util util;
    final UrunKoduRepository urunKoduRepo;

    public UrunKoduController(Util util, UrunKoduRepository urunKoduRepo) {
        this.util = util;
        this.urunKoduRepo = urunKoduRepo;
    }
    @GetMapping("/urunkodu")
    public String urunKodu(Model model){
        if(status){
            model.addAttribute("status",status);
            status=false;
        }
        model.addAttribute("urunKodu",urunKoduRepo.findAll());
        return util.control("urunkodu");
    }

    boolean status =false;
    @PostMapping("/urunKoduEkle")
    public String urunKoduEkle(UrunKodu urunKodu){

        if(urunKoduRepo.save(urunKodu)!= null){
            status=true;
            return "redirect:/urunkodu";
        }
        return util.control("urunkodu");


    }



    @GetMapping("/urunKoduSil/{urunid}")
    public String urunKoduSil(@PathVariable String urunid){
        try {
            int converturunid=Integer.parseInt(urunid);
            urunKoduRepo.deleteById(converturunid);
            return "redirect:/urunkodu";
        }catch (Exception ex){

        }
        util.logout();
        return "redirect:/";
    }
}
