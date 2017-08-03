package com.web.entity;

/**
 * Created by leeezm on 17-8-3.
 */
public class RankResult extends BasicVo{
    private int id;                 //ID
    private int contestId;          //rank比赛ID
    private int userId;             //用户id,帮派id
    private int account;            //总得分
    private String detail;          //每道题得分

    public RankResult(){}

    public RankResult(int id, int contestId, int userId, int account, String detail) {
        this.id = id;
        this.contestId = contestId;
        this.userId = userId;
        this.account = account;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContestId() {
        return contestId;
    }

    public void setContestId(int contestId) {
        this.contestId = contestId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
