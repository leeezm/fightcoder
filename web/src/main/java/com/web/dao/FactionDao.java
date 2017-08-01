package com.web.dao;

import com.web.entity.BasicVo;
import com.web.entity.Faction;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tym on 17-7-31.
 */
@Repository("FactionDao")
public interface FactionDao extends BasicDao {
    public List<BasicVo> listBatch(@Param("param1") Faction faction, @Param("param2")int start,@Param("param3") int size);
}

