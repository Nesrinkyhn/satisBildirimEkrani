package com.works.odev.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class Satis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int satisid;
    private String islem;
    private String satisFaaliyetAlani;
    private String satisFirmaAdi;
    private String satisBasvuruSubesi;
    private String satisTeslimatSubesi;
    private String satisUrunKodu;
    private String satisSekli;
    private String firmaTuketim;
    private String firmaTalep;
    private String firmaTahsis;
    private String gunlukYatan;
    private String oncekiYatan;
    private String gunlukTeslimat;
    private String toplamTeslimat;
    private String mahsulYili;
    private String islemYapan;
    private String islemTarihi;
    private String satisTarihi;

    public int getSatisid() {
        return satisid;
    }

    public void setSatisid(int satisid) {
        this.satisid = satisid;
    }

    public String getIslem() {
        return islem;
    }

    public void setIslem(String islem) {
        this.islem = islem;
    }

    public String getSatisFaaliyetAlani() {
        return satisFaaliyetAlani;
    }

    public void setSatisFaaliyetAlani(String satisFaaliyetAlani) {
        this.satisFaaliyetAlani = satisFaaliyetAlani;
    }

    public String getSatisFirmaAdi() {
        return satisFirmaAdi;
    }

    public void setSatisFirmaAdi(String satisFirmaAdi) {
        this.satisFirmaAdi = satisFirmaAdi;
    }

    public String getSatisBasvuruSubesi() {
        return satisBasvuruSubesi;
    }

    public void setSatisBasvuruSubesi(String satisBasvuruSubesi) {
        this.satisBasvuruSubesi = satisBasvuruSubesi;
    }

    public String getSatisTeslimatSubesi() {
        return satisTeslimatSubesi;
    }

    public void setSatisTeslimatSubesi(String satisTeslimatSubesi) {
        this.satisTeslimatSubesi = satisTeslimatSubesi;
    }

    public String getSatisUrunKodu() {
        return satisUrunKodu;
    }

    public void setSatisUrunKodu(String satisUrunKodu) {
        this.satisUrunKodu = satisUrunKodu;
    }

    public String getSatisSekli() {
        return satisSekli;
    }

    public void setSatisSekli(String satisSekli) {
        this.satisSekli = satisSekli;
    }

    public String getFirmaTuketim() {
        return firmaTuketim;
    }

    public void setFirmaTuketim(String firmaTuketim) {
        this.firmaTuketim = firmaTuketim;
    }

    public String getFirmaTalep() {
        return firmaTalep;
    }

    public void setFirmaTalep(String firmaTalep) {
        this.firmaTalep = firmaTalep;
    }

    public String getFirmaTahsis() {
        return firmaTahsis;
    }

    public void setFirmaTahsis(String firmaTahsis) {
        this.firmaTahsis = firmaTahsis;
    }

    public String getGunlukYatan() {
        return gunlukYatan;
    }

    public void setGunlukYatan(String gunlukYatan) {
        this.gunlukYatan = gunlukYatan;
    }

    public String getOncekiYatan() {
        return oncekiYatan;
    }

    public void setOncekiYatan(String oncekiYatan) {
        this.oncekiYatan = oncekiYatan;
    }

    public String getGunlukTeslimat() {
        return gunlukTeslimat;
    }

    public void setGunlukTeslimat(String gunlukTeslimat) {
        this.gunlukTeslimat = gunlukTeslimat;
    }

    public String getToplamTeslimat() {
        return toplamTeslimat;
    }

    public void setToplamTeslimat(String toplamTeslimat) {
        this.toplamTeslimat = toplamTeslimat;
    }

    public String getMahsulYili() {
        return mahsulYili;
    }

    public void setMahsulYili(String mahsulYili) {
        this.mahsulYili = mahsulYili;
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

    public String getSatisTarihi() {
        return satisTarihi;
    }

    public void setSatisTarihi(String satisTarihi) {
        this.satisTarihi = satisTarihi;
    }
}