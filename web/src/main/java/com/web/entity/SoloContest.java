package com.web.entity;

/**
 * Created by leeezm on 17-8-3.
 */
public class SoloContest extends BasicVo{
    private int id;                 //ID
    private int fromUserId;         //挑战ID
    private int toUserId;           //守擂ID
    private String startTime;       //开始时间(年月日时分)
    private String endTime;         //结束时间
    private int problemNum;         //试题的总数
    private int result;             //0:挑战方获胜,1:守擂方获胜,2:平局
    private String detail;          //比赛结果详情(各自AC的题目个数)

    public SoloContest(){}

    public SoloContest(int id, int fromUserId, int toUserId, String startTime, String endTime, int problemNum, int result, String detail) {
        this.id = id;
        this.fromUserId = fromUserId;
        this.toUserId = toUserId;
        this.startTime = startTime;
        this.endTime = endTime;
        this.problemNum = problemNum;
        this.result = result;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFromUserId() {
        return fromUserId;
    }

    public void setFromUserId(int fromUserId) {
        this.fromUserId = fromUserId;
    }

    public int getToUserId() {
        return toUserId;
    }

    public void setToUserId(int toUserId) {
        this.toUserId = toUserId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getProblemNum() {
        return problemNum;
    }

    public void setProblemNum(int problemNum) {
        this.problemNum = problemNum;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
