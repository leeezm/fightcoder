package com.fightcoder.mapper;

import com.fightcoder.pojo.Faction;

public interface FactionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Faction record);

    int insertSelective(Faction record);

    Faction selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Faction record);

    int updateByPrimaryKeyWithBLOBs(Faction record);

    int updateByPrimaryKey(Faction record);
}