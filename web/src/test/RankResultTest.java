import com.web.dao.CoderDao;
import com.web.dao.RankContestDAO;
import com.web.dao.RankResultDAO;
import com.web.entity.BasicVo;
import com.web.entity.Coder;
import com.web.entity.RankContest;
import com.web.entity.RankResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tym on 17-8-1.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml",
        "classpath:config/spring-mybatis.xml"})
public class RankResultTest {

    @Autowired
    private RankResultDAO rankResultDAO;

    @Test
    public void test(){

//        RankResult rr = new RankResult(0,1,2,100,"aa");
//        rankResultDAO.save(rr);
//
//        RankResult rr1 = new RankResult(0,1,2,100,"aa");
//        RankResult rr2 = new RankResult(0,1,2,100,"aa");
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(rr1);
//        list.add(rr2);
//        rankResultDAO.saveBatch(list);

//        rankResultDAO.countAll();
//        RankResult rr = new RankResult();
//        rankResultDAO.count(rr);


//        rankResultDAO.remove(1);
//        int[] a={2,3};
//        rankResultDAO.removeBatch(a);

//        rankResultDAO.getEntityById(5);
//
//        RankResult rr = new RankResult();
//        rankResultDAO.listBatch(rr,5,2);



        RankResult sr = new RankResult(4,22,22,22,"22");
        rankResultDAO.update(sr);
    }
}
