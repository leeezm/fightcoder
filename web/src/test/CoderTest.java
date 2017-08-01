import com.web.dao.CoderDao;
import com.web.entity.BasicVo;
import com.web.entity.Coder;
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
public class CoderTest {

    @Autowired
    private CoderDao coderDao;

    @Test
    public void test(){

        Coder coder = new Coder();
        coder.setPicture("");
//        coderDao.save(coder);

        coder.setEmail("dsd");
        Coder coder0 = new Coder();
        coder0.setPicture("");
        coder0.setEmail("ds");
        List<BasicVo> list = new ArrayList<BasicVo>();
        list.add(coder);
        list.add(coder0);
        coderDao.saveBatch(list);

//        coderDao.countAll();
//        Coder cooder = new Coder();
//        coderDao.count(coder);


//        coderDao.remove(1);
//        int[] a={2,3};
//        coderDao.removeBatch(a);

//        coderDao.getEntityById(5);
//
//        Coder coder1 = new Coder();
//        coderDao.listBatch(coder1,5,2);



//        Coder coder1 = new Coder();
//        coder1.setId(5);
//        coder1.setEmail("dssas");
//        coderDao.update(coder1);
    }
}
