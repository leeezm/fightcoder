package com.web.entity;

/**
 * Created by tym on 17-8-1.
 */
public class BlogMain extends BasicVo {
    private Integer id;

    private Integer instuserid;

    private String title;

    private String createdate;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInstuserid() {
        return instuserid;
    }

    public void setInstuserid(Integer instuserid) {
        this.instuserid = instuserid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate == null ? null : createdate.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}
