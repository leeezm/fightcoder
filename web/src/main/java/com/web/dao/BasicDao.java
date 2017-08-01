package com.web.dao;

import com.web.entity.BasicVo;
import java.util.List;

/**
 * Created by tym on 17-7-31.
 */
public interface BasicDao {

    //添加
    public int save(BasicVo basicVo);

    public int saveBatch(List<BasicVo> basicVoList);

    //删除
    public int remove(int id);

    public int removeBatch(int[] id);

    //修改
    public int update(BasicVo basicVo);

    //查找
    public BasicVo getEntityById(int id);

    public List<BasicVo> listBatch(BasicVo basicVo, int start, int size);

    //统计个数
    public int count(BasicVo basicVo);

    public int countAll();
}
