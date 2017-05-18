package com.cmsz.bean;

import java.util.Date;

public class OpenUserMsg {
    private Integer id;

    private String account;

    private Integer groupid;

    private String mainpath;

    private Integer numberProperty;

    private Date startTime;

    private Date endTime;

    private String system;

    private String equipmentStage;

    private String openReason;

    private Integer statue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public String getMainpath() {
        return mainpath;
    }

    public void setMainpath(String mainpath) {
        this.mainpath = mainpath == null ? null : mainpath.trim();
    }

    public Integer getNumberProperty() {
        return numberProperty;
    }

    public void setNumberProperty(Integer numberProperty) {
        this.numberProperty = numberProperty;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system == null ? null : system.trim();
    }

    public String getEquipmentStage() {
        return equipmentStage;
    }

    public void setEquipmentStage(String equipmentStage) {
        this.equipmentStage = equipmentStage == null ? null : equipmentStage.trim();
    }

    public String getOpenReason() {
        return openReason;
    }

    public void setOpenReason(String openReason) {
        this.openReason = openReason == null ? null : openReason.trim();
    }

    public Integer getStatue() {
        return statue;
    }

    public void setStatue(Integer statue) {
        this.statue = statue;
    }
}