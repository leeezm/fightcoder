package com.fightcoder.mapper;

import com.fightcoder.pojo.BlogLeave;

public interface BlogLeaveMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogLeave record);

    int insertSelective(BlogLeave record);

    BlogLeave selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogLeave record);

    int updateByPrimaryKeyWithBLOBs(BlogLeave record);

    int updateByPrimaryKey(BlogLeave record);
}