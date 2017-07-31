package com.web.entity;

/**
 * Created by leeezm on 17-7-31.
 */
public class Contest extends BasicVo{
    private int id;                     //ID
    private int contestType;            //比赛类型(1:单人solo,2:帮派solo,3:普通比赛,4:多帮派比赛)
    private int fromUserId;             //挑战者ID
    private int toUserId;               //守擂者ID
    private String contestList;         //参赛者(使用用户或帮派ID,用;分隔)
    private String contestName;         //大赛名称
    private String description;         //比赛描述
    private String startTime;           //开始时间(年月日时分)
    private String endTime;             //结束时间
    private int problemNum;             //试题的总数
    private int contestResult;          //待完善,不完整,比赛结果

    public Contest(){}

    public Contest(int id, int contestType, int fromUserId, int toUserId, String contestList, String contestName, String description, String startTime, String endTime, int problemNum, int contestResult) {
        this.id = id;
        this.contestType = contestType;
        this.fromUserId = fromUserId;
        this.toUserId = toUserId;
        this.contestList = contestList;
        this.contestName = contestName;
        this.description = description;
        this.startTime = startTime;
        this.endTime = endTime;
        this.problemNum = problemNum;
        this.contestResult = contestResult;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContestType() {
        return contestType;
    }

    public void setContestType(int contestType) {
        this.contestType = contestType;
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

    public String getContestList() {
        return contestList;
    }

    public void setContestList(String contestList) {
        this.contestList = contestList;
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

    public int getContestResult() {
        return contestResult;
    }

    public void setContestResult(int contestResult) {
        this.contestResult = contestResult;
    }
}
