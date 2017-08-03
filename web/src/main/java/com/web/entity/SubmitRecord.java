package com.web.entity;

/**
 * Created by leeezm on 17-7-31.
 */
public class SubmitRecord extends BasicVo{
    private int id;                     //ID
    private int problemId;              //题目表ID
    private String title;               //题目标题
    private int type;                   //提交类型(默认0:普通题,否则为contest_id)
    private int instUserId;             //提交用户ID
    private int language;               //提交语言
    private String submitTime;          //提交时间
    private int runningTime;            //耗时(ms)
    private int runningMemory;          //所占空间
    private String result;              //结果:pending,judging,Accept,ComplieError,RuntimeError
    private String resultDescription;   //结果描述(AC,ComplieError:错误信息,RuntimeError:通过的比率)
    private String code;                //提交代码

    public SubmitRecord(){}

    public SubmitRecord(int id, int problemId, String title, int type, int instUserId, int language, String submitTime, int runningTime, int runningMemory, String result, String resultDescription, String code) {
        this.id = id;
        this.problemId = problemId;
        this.title = title;
        this.type = type;
        this.instUserId = instUserId;
        this.language = language;
        this.submitTime = submitTime;
        this.runningTime = runningTime;
        this.runningMemory = runningMemory;
        this.result = result;
        this.resultDescription = resultDescription;
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProblemId() {
        return problemId;
    }

    public void setProblemId(int problemId) {
        this.problemId = problemId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getInstUserId() {
        return instUserId;
    }

    public void setInstUserId(int instUserId) {
        this.instUserId = instUserId;
    }

    public int getLanguage() {
        return language;
    }

    public void setLanguage(int language) {
        this.language = language;
    }

    public String getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(String submitTime) {
        this.submitTime = submitTime;
    }

    public int getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(int runningTime) {
        this.runningTime = runningTime;
    }

    public int getRunningMemory() {
        return runningMemory;
    }

    public void setRunningMemory(int runningMemory) {
        this.runningMemory = runningMemory;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getResultDescription() {
        return resultDescription;
    }

    public void setResultDescription(String resultDescription) {
        this.resultDescription = resultDescription;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
