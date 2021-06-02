package com.works.odev.controllers;

import com.works.odev.entities.Firma;
import com.works.odev.repositories.FirmaRepository;
import com.works.odev.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class FirmaController {
    final Util util;
    final FirmaRepository firmaRepo;

    public FirmaController(Util util, FirmaRepository firmaRepo) {
        this.util = util;
        this.firmaRepo = firmaRepo;
    }

    @GetMapping("/firmaekle")
    public String firmaekle(Model model) {
        if (status) {
            model.addAttribute("status", status);
            status = false;
        }
        model.addAttribute("firma", firmaRepo.findAll());
        return util.control("firmaekle");
    }

    boolean status = false;

    @PostMapping("/firmaEkle")
    public String firmaEkle(Firma firma) {

        if (firmaRepo.save(firma) != null) {
            status = true;
            return "redirect:/firmaekle";
        }
        return util.control("firmaekle");


    }


    @GetMapping("/firmaSil/{firmaid}")
    public String kullaniciSil(@PathVariable String firmaid) {
        try {
            int convertfirmaid = Integer.parseInt(firmaid);
            firmaRepo.deleteById(convertfirmaid);
            return "redirect:/firmaekle";
        } catch (Exception ex) {

        }
        util.logout();
        return "redirect:/";
    }
}
