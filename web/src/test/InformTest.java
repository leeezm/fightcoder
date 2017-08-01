import com.web.dao.InformDao;
import com.web.entity.BasicVo;
import com.web.entity.Inform;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tym on 17-7-31.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml",
        "classpath:config/spring-mybatis.xml"})
public class InformTest {

    @Autowired
    private InformDao informDao;

    @Test
    public void testinform(){

//        Inform inform = new Inform();
//        informDao.save(inform);
//
//        Inform inform1 = new Inform();
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(inform);
//        list.add(inform1);
//        informDao.saveBatch(list);


//        int [] a = {2,3};
//        informDao.remove(1);
//        informDao.removeBatch(a);


//        Inform inform = new Inform();
//        inform.setSendtime("dasdasd");
//        informDao.update(inform);


//        Inform inform = new Inform();
//        informDao.getEntityById(4);
//        informDao.listBatch(inform,5,3);


        Inform inform = new Inform();
        informDao.countAll();
        informDao.count(inform);
    }
}
