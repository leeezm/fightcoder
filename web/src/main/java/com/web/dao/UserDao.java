package com.web.dao;

/**
 * Created by tym on 17-7-31.
 */

import com.web.entity.BasicVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("UserDao")
public interface UserDao extends BasicDao {
    public List<BasicVo> listBatch(@Param("param1") BasicVo basicVo,
                                   @Param("param2") int start,@Param("param3") int size);
}
