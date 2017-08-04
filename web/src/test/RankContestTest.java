import com.web.dao.RankContestDAO;
import com.web.entity.BasicVo;
import com.web.entity.RankContest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by tym on 17-8-1.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml",
        "classpath:config/spring-mybatis.xml"})
public class RankContestTest {

    @Autowired
    private RankContestDAO rankContestDAO;

    @Test
    public void test(){

//        RankContest rankContest = new RankContest(0,"aa","这是比赛","22","22",12);
//        rankContestDAO.save(rankContest);
//
//        RankContest rankContest1 = new RankContest(0,"bb","这是","22","22",12);
//        RankContest rankContest2 = new RankContest(0,"cc","这是","22","22",12);
//
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(rankContest1);
//        list.add(rankContest2);
//        rankContestDAO.saveBatch(list);


//        rankContestDAO.remove(1);
//        int[] a={2,3};
//        rankContestDAO.removeBatch(a);

//        rankContestDAO.getEntityById(4);
//
        RankContest rank = new RankContest(4,"a","b","c","d",10);
        rankContestDAO.update(rank);
    }
}
