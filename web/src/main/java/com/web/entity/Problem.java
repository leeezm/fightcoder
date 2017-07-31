package com.web.entity;

/**
 * Created by leeezm on 17-7-31.
 */
public class Problem extends BasicVo{
    private int id;                         //ID
    private int problemType;                //题目类型(默认NULL:普通题,否则为contest_id:默认不显示竞赛题目)
    private String problemAlgorithmId;      //算法字典表ID
    private String problemStructureId;      //数据结构字典表ID
    private String problemDifficultyId;     //难度字典表ID
    private String title;                   //标题
    private String description;             //题目描述
    private String inputDescription;        //输入描述
    private String outputDescription;       //输出描述
    private String rangeHints;              //数据范围及提示
    private String inputTest;               //样例输入
    private String outputTest;              //样例输出
    private int timeLimit;                  //限时(ms)
    private int memoryLimit;                //空间限制

    public Problem(){}

    public Problem(int id, int problemType, String problemAlgorithmId, String problemStructureId, String problemDifficultyId, String title, String description, String inputDescription, String outputDescription, String rangeHints, String inputTest, String outputTest, int timeLimit, int memoryLimit) {
        this.id = id;
        this.problemType = problemType;
        this.problemAlgorithmId = problemAlgorithmId;
        this.problemStructureId = problemStructureId;
        this.problemDifficultyId = problemDifficultyId;
        this.title = title;
        this.description = description;
        this.inputDescription = inputDescription;
        this.outputDescription = outputDescription;
        this.rangeHints = rangeHints;
        this.inputTest = inputTest;
        this.outputTest = outputTest;
        this.timeLimit = timeLimit;
        this.memoryLimit = memoryLimit;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProblemType() {
        return problemType;
    }

    public void setProblemType(int problemType) {
        this.problemType = problemType;
    }

    public String getProblemAlgorithmId() {
        return problemAlgorithmId;
    }

    public void setProblemAlgorithmId(String problemAlgorithmId) {
        this.problemAlgorithmId = problemAlgorithmId;
    }

    public String getProblemStructureId() {
        return problemStructureId;
    }

    public void setProblemStructureId(String problemStructureId) {
        this.problemStructureId = problemStructureId;
    }

    public String getProblemDifficultyId() {
        return problemDifficultyId;
    }

    public void setProblemDifficultyId(String problemDifficultyId) {
        this.problemDifficultyId = problemDifficultyId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInputDescription() {
        return inputDescription;
    }

    public void setInputDescription(String inputDescription) {
        this.inputDescription = inputDescription;
    }

    public String getOutputDescription() {
        return outputDescription;
    }

    public void setOutputDescription(String outputDescription) {
        this.outputDescription = outputDescription;
    }

    public String getRangeHints() {
        return rangeHints;
    }

    public void setRangeHints(String rangeHints) {
        this.rangeHints = rangeHints;
    }

    public String getInputTest() {
        return inputTest;
    }

    public void setInputTest(String inputTest) {
        this.inputTest = inputTest;
    }

    public String getOutputTest() {
        return outputTest;
    }

    public void setOutputTest(String outputTest) {
        this.outputTest = outputTest;
    }

    public int getTimeLimit() {
        return timeLimit;
    }

    public void setTimeLimit(int timeLimit) {
        this.timeLimit = timeLimit;
    }

    public int getMemoryLimit() {
        return memoryLimit;
    }

    public void setMemoryLimit(int memoryLimit) {
        this.memoryLimit = memoryLimit;
    }
}
