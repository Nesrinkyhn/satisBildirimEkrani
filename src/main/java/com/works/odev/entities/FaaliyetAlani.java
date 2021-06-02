package com.works.odev.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class FaaliyetAlani {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int fid;
    private String faaliyetadi;
    private String faaliyetiekleyen;
    private String islemtarihi;

    public String getIslemtarihi() {
        return islemtarihi;
    }

    public void setIslemtarihi(String islemtarihi) {

        this.islemtarihi = islemtarihi;
    }

    public String getFaaliyetiekleyen() {
        return faaliyetiekleyen;
    }

    public void setFaaliyetiekleyen(String faaliyetiekleyen) {
        this.faaliyetiekleyen = faaliyetiekleyen;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFaaliyetadi() {
        return faaliyetadi;
    }

    public void setFaaliyetadi(String faaliyetadi) {
        this.faaliyetadi = faaliyetadi;
    }
}
