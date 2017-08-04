import com.web.dao.CoderDao;
import com.web.dao.SoloContestDAO;
import com.web.entity.BasicVo;
import com.web.entity.Coder;
import com.web.entity.SoloContest;
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
public class SoloContestTest {

    @Autowired
    private SoloContestDAO soloContestDAO;

    @Test
    public void test(){

//        SoloContest soloContest = new SoloContest(0,1,1,"2017-8-4","2017-8-5",30,2,"AC 2");
//        soloContestDAO.save(soloContest);
//
//        SoloContest soloContest1 = new SoloContest(0,1,1,"2017-8-4","2017-8-5",30,2,"AC 2");
//        SoloContest soloContest2 = new SoloContest(0,1,1,"2017-8-4","2017-8-5",30,2,"AC 2");
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(soloContest1);
//        list.add(soloContest2);
//        soloContestDAO.saveBatch(list);

//        soloContestDAO.countAll();
//        SoloContest solo = new SoloContest();
//        soloContestDAO.count(solo);


//        soloContestDAO.remove(1);
//        int[] a={2,3};
//        soloContestDAO.removeBatch(a);

//        soloContestDAO.getEntityById(5);
//
//        SoloContest so = new SoloContest();
//        soloContestDAO.listBatch(so,5,2);



        SoloContest s = new SoloContest(4,2,2,"2","2",2,2,"2");
        soloContestDAO.update(s);
    }
}
