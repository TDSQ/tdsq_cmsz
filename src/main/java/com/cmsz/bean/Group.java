package com.cmsz.bean;

public class Group {
    private Integer groupid;

    private Integer groupTm;

    private String groupname;

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public Integer getGroupTm() {
        return groupTm;
    }

    public void setGroupTm(Integer groupTm) {
        this.groupTm = groupTm;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname == null ? null : groupname.trim();
    }
}