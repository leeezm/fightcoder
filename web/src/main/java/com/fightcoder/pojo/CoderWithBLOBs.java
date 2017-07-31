package com.fightcoder.pojo;

public class CoderWithBLOBs extends Coder {
    private String following;

    private String followers;

    public String getFollowing() {
        return following;
    }

    public void setFollowing(String following) {
        this.following = following == null ? null : following.trim();
    }

    public String getFollowers() {
        return followers;
    }

    public void setFollowers(String followers) {
        this.followers = followers == null ? null : followers.trim();
    }
}