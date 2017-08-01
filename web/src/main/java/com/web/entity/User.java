package com.web.entity;

/**
 * Created by tym on 17-7-31.
 */
public class User extends BasicVo{
    private Integer id;

    private Integer instcoderid;   //coder实例id

    private String creationdate;   //注册日期

    private String email;  //邮箱

    private String password;  //密码

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInstcoderid() {
        return instcoderid;
    }

    public void setInstcoderid(Integer instcoderid) {
        this.instcoderid = instcoderid;
    }

    public String getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(String creationdate) {
        this.creationdate = creationdate == null ? null : creationdate.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
}
