package com.fightcoder.pojo;

public class Faction {
    private Integer id;

    private Integer creatorid;

    private Integer rank;

    private String name;

    private String description;

    private String creationdate;

    private String deputyleader;

    private String elite;

    private String member;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCreatorid() {
        return creatorid;
    }

    public void setCreatorid(Integer creatorid) {
        this.creatorid = creatorid;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(String creationdate) {
        this.creationdate = creationdate == null ? null : creationdate.trim();
    }

    public String getDeputyleader() {
        return deputyleader;
    }

    public void setDeputyleader(String deputyleader) {
        this.deputyleader = deputyleader == null ? null : deputyleader.trim();
    }

    public String getElite() {
        return elite;
    }

    public void setElite(String elite) {
        this.elite = elite == null ? null : elite.trim();
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member == null ? null : member.trim();
    }
}