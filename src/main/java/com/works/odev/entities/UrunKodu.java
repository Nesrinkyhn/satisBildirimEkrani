package com.works.odev.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UrunKodu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int urunid;
    private String urunKodu;
    private String grupKodu;
    private String urunAdi;
    private String stokTuru;
    private String stokHesap;
    private String islemYapan;
    private String islemTarihi;

    public int getUrunid() {
        return urunid;
    }

    public void setUrunid(int urunid) {
        this.urunid = urunid;
    }

    public String getUrunKodu() {
        return urunKodu;
    }

    public void setUrunKodu(String urunKodu) {
        this.urunKodu = urunKodu;
    }

    public String getGrupKodu() {
        return grupKodu;
    }

    public void setGrupKodu(String grupKodu) {
        this.grupKodu = grupKodu;
    }

    public String getUrunAdi() {
        return urunAdi;
    }

    public void setUrunAdi(String urunAdi) {
        this.urunAdi = urunAdi;
    }

    public String getStokTuru() {
        return stokTuru;
    }

    public void setStokTuru(String stokTuru) {
        this.stokTuru = stokTuru;
    }

    public String getStokHesap() {
        return stokHesap;
    }

    public void setStokHesap(String stokHesap) {
        this.stokHesap = stokHesap;
    }

    public String getIslemYapan() {
        return islemYapan;
    }

    public void setIslemYapan(String islemYapan) {
        this.islemYapan = islemYapan;
    }

    public String getIslemTarihi() {
        return islemTarihi;
    }

    public void setIslemTarihi(String islemTarihi) {
        this.islemTarihi = islemTarihi;
    }



}