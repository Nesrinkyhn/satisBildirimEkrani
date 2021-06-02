package com.works.odev.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class Firma {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    private int firmaid;
    private String firmaUnvani;
    private String firmaNo;
    private String firmaVergiNo;
    private String firmaKimlikNo;
    private String firmaAdresi;
    private String firmaTelNo;
    private String firmaIsyeriKodu;
    private String firmaIsyeriAdi;
    private String islemYapan;
    private String islemTarihi;

    public int getFirmaid() {
        return firmaid;
    }

    public void setFirmaid(int firmaid) {
        this.firmaid = firmaid;
    }

    public String getFirmaUnvani() {
        return firmaUnvani;
    }

    public void setFirmaUnvani(String firmaUnvani) {
        this.firmaUnvani = firmaUnvani;
    }

    public String getFirmaNo() {
        return firmaNo;
    }

    public void setFirmaNo(String firmaNo) {
        this.firmaNo = firmaNo;
    }

    public String getFirmaVergiNo() {
        return firmaVergiNo;
    }

    public void setFirmaVergiNo(String firmaVergiNo) {
        this.firmaVergiNo = firmaVergiNo;
    }

    public String getFirmaKimlikNo() {
        return firmaKimlikNo;
    }

    public void setFirmaKimlikNo(String firmaKimlikNo) {
        this.firmaKimlikNo = firmaKimlikNo;
    }

    public String getFirmaAdresi() {
        return firmaAdresi;
    }

    public void setFirmaAdresi(String firmaAdresi) {
        this.firmaAdresi = firmaAdresi;
    }

    public String getFirmaTelNo() {
        return firmaTelNo;
    }

    public void setFirmaTelNo(String firmaTelNo) {
        this.firmaTelNo = firmaTelNo;
    }

    public String getFirmaIsyeriKodu() {
        return firmaIsyeriKodu;
    }

    public void setFirmaIsyeriKodu(String firmaIsyeriKodu) {
        this.firmaIsyeriKodu = firmaIsyeriKodu;
    }

    public String getFirmaIsyeriAdi() {
        return firmaIsyeriAdi;
    }

    public void setFirmaIsyeriAdi(String firmaIsyeriAdi) {
        this.firmaIsyeriAdi = firmaIsyeriAdi;
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
