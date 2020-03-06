package com.wenlan.website.bean;

/**
 * @Author wenlan
 * @Date 2020-2-15 20:47
 * @Version 1.0
 * Content:
 */
public class User {
    private Integer uId;
    /**
     * 用户名
     */
    private String uName;
    /**
     * 用户手机号
     */
    private String uTelephone;
    /**
     * 用户邮箱
     */
    private String uEmail;
    /**96
     * 用户密码
     */
    private String uPassword;
    /**
     * 用户级别（0为管理员，1为普通用户，默认填充为1普通用户）
     */
    private String uLevel;
    /**
     * 账号状态（0为未封号，1为已封号，默认填充为0未封号）
     */
    private Character uRecoveryStatus;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuTelephone() {
        return uTelephone;
    }

    public void setuTelephone(String uTelephone) {
        this.uTelephone = uTelephone;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getuLevel() {
        return uLevel;
    }

    public void setuLevel(String uLevel) {
        this.uLevel = uLevel;
    }

    public Character getuRecoveryStatus() {
        return uRecoveryStatus;
    }

    public void setuRecoveryStatus(Character uRecoveryStatus) {
        this.uRecoveryStatus = uRecoveryStatus;
    }
}
