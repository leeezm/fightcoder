package com.fightcoder.mapper;

import com.fightcoder.pojo.Inform;

public interface InformMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Inform record);

    int insertSelective(Inform record);

    Inform selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Inform record);

    int updateByPrimaryKeyWithBLOBs(Inform record);

    int updateByPrimaryKey(Inform record);
}