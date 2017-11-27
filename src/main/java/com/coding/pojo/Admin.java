package com.coding.pojo;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

public class Admin {
    private Integer adminId;
    @Size(min = 4,max = 16,message = "admin.adminAccountLength")
    @NotNull(message = "admin.adminAccount")
    private String adminAccount;
    @NotNull(message = "admin.adminPassword")
    @Size(min = 3,max = 16,message = "admin.adminPasswordLength")
    private String adminPassword;

    private String adminPhone;

    private String adminEmail;

    private Date adminRegisterTime;
    @NotNull(message = "admin.groupId")
    private Integer groupId;

    private String dateToString;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminAccount() {
        return adminAccount;
    }

    public void setAdminAccount(String adminAccount) {
        this.adminAccount = adminAccount == null ? null : adminAccount.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone == null ? null : adminPhone.trim();
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail == null ? null : adminEmail.trim();
    }

    public Date getAdminRegisterTime() {
        return adminRegisterTime;
    }

    public void setAdminRegisterTime(Date adminRegisterTime) {
        this.adminRegisterTime = adminRegisterTime;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public void setDateToString(String dateToString) {
        this.dateToString = dateToString;
    }

    public String getDateToString() {
        return dateToString;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminAccount='" + adminAccount + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", adminPhone='" + adminPhone + '\'' +
                ", adminEmail='" + adminEmail + '\'' +
                ", adminRegisterTime=" + adminRegisterTime +
                ", groupId=" + groupId +
                ", DateToString=" + dateToString +
                '}';
    }
}