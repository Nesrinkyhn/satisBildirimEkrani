package com.works.odev.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    private int uid;
    private String kullaniciAdi;
    private String name;
    private String surname;
    private String email;
    private String password;
    private String rol;
    private String isyerikodu;
    private String isyeriadi;
    private String islemYapan;
    private String islemTarihi;

    public int getUid() {
        return uid;
    }

    public String getKullaniciAdi() {
        return kullaniciAdi;
    }

    public void setKullaniciAdi(String kullaniciAdi) {
        this.kullaniciAdi = kullaniciAdi;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getIsyerikodu() {
        return isyerikodu;
    }

    public void setIsyerikodu(String isyerikodu) {
        this.isyerikodu = isyerikodu;
    }

    public String getIsyeriadi() {
        return isyeriadi;
    }

    public void setIsyeriadi(String isyeriadi) {
        this.isyeriadi = isyeriadi;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
