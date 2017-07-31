package com.web.entity;

/**
 * Created by leeezm on 17-7-31.
 */
public class UploadProblem extends BasicVo{
    private int id;             //ID
    private int instUserId;     //题目上传者ID
    private int problemId;      //题目实例表ID
    private String status;      //状态(待审核,已采纳,未采纳)
    private String addTime;     //上传日期

    public UploadProblem(){}

    public UploadProblem(int id, int instUserId, int problemId, String status, String addTime) {
        this.id = id;
        this.instUserId = instUserId;
        this.problemId = problemId;
        this.status = status;
        this.addTime = addTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInstUserId() {
        return instUserId;
    }

    public void setInstUserId(int instUserId) {
        this.instUserId = instUserId;
    }

    public int getProblemId() {
        return problemId;
    }

    public void setProblemId(int problemId) {
        this.problemId = problemId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }
}
