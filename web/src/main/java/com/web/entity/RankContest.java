package com.web.entity;

/**
 * Created by leeezm on 17-8-3.
 */
public class RankContest extends BasicVo{
    private int id;                 //ID
    private String contestName;     //大赛名称
    private String description;     //比赛描述
    private String startTime;       //开始时间(年月日时分)
    private String endTime;         //结束时间
    private int problemNum;         //试题的总数

    public RankContest(){}

    public RankContest(int id, String contestName, String description, String startTime, String endTime, int problemNum) {
        this.id = id;
        this.contestName = contestName;
        this.description = description;
        this.startTime = startTime;
        this.endTime = endTime;
        this.problemNum = problemNum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContestName() {
        return contestName;
    }

    public void setContestName(String contestName) {
        this.contestName = contestName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
}
