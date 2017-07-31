package com.fightcoder.mapper;

import com.fightcoder.pojo.Coder;
import com.fightcoder.pojo.CoderWithBLOBs;

public interface CoderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CoderWithBLOBs record);

    int insertSelective(CoderWithBLOBs record);

    CoderWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CoderWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CoderWithBLOBs record);

    int updateByPrimaryKey(Coder record);
}