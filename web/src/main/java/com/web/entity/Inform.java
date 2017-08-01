package com.web.entity;

/**
 * Created by tym on 17-7-31.
 */
public class Inform extends BasicVo{
    private Integer id;

    private Integer recieveid;

    private String sendtime;

    private Integer flag;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRecieveid() {
        return recieveid;
    }

    public void setRecieveid(Integer recieveid) {
        this.recieveid = recieveid;
    }

    public String getSendtime() {
        return sendtime;
    }

    public void setSendtime(String sendtime) {
        this.sendtime = sendtime == null ? null : sendtime.trim();
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}
