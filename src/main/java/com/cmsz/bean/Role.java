package com.cmsz.bean;

public class Role {
    private Integer roleid;

    private String rolenamme;

    private String roledesc;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolenamme() {
        return rolenamme;
    }

    public void setRolenamme(String rolenamme) {
        this.rolenamme = rolenamme == null ? null : rolenamme.trim();
    }

    public String getRoledesc() {
        return roledesc;
    }

    public void setRoledesc(String roledesc) {
        this.roledesc = roledesc == null ? null : roledesc.trim();
    }
}