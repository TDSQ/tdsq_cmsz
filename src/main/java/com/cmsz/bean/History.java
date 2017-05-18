package com.cmsz.bean;

import java.util.Date;

public class History {
    private Integer id;

    private String realname;

    private String account;

    private String handelperson;

    private Date handeltime;

    private Date openTime;

    private Integer statue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getHandelperson() {
        return handelperson;
    }

    public void setHandelperson(String handelperson) {
        this.handelperson = handelperson == null ? null : handelperson.trim();
    }

    public Date getHandeltime() {
        return handeltime;
    }

    public void setHandeltime(Date handeltime) {
        this.handeltime = handeltime;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    public Integer getStatue() {
        return statue;
    }

    public void setStatue(Integer statue) {
        this.statue = statue;
    }
}