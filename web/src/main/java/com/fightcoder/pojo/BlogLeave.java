package com.fightcoder.pojo;

public class BlogLeave {
    private Integer id;

    private Integer leaveid;

    private Integer receiveid;

    private Integer mainid;

    private String createdate;

    private String leavecontent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLeaveid() {
        return leaveid;
    }

    public void setLeaveid(Integer leaveid) {
        this.leaveid = leaveid;
    }

    public Integer getReceiveid() {
        return receiveid;
    }

    public void setReceiveid(Integer receiveid) {
        this.receiveid = receiveid;
    }

    public Integer getMainid() {
        return mainid;
    }

    public void setMainid(Integer mainid) {
        this.mainid = mainid;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate == null ? null : createdate.trim();
    }

    public String getLeavecontent() {
        return leavecontent;
    }

    public void setLeavecontent(String leavecontent) {
        this.leavecontent = leavecontent == null ? null : leavecontent.trim();
    }
}