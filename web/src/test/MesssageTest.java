import com.web.dao.MessageDao;
import com.web.entity.BasicVo;
import com.web.entity.Message;
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
public class MesssageTest {

    @Autowired
    private MessageDao messageDao;
    @Test
    public void test(){

//        Message message = new Message();
//        messageDao.save(message);
//
        Message message0 = new Message();
//        Message message1 = new Message();
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(message0);
//        list.add(message1);
//        messageDao.saveBatch(list);

//        messageDao.remove(1);
//        int [] a ={2,3,4};
//        messageDao.removeBatch(a);
//        message0.setSendtime("dasd");
//        message0.setId(5);
//        messageDao.update(message0);
//
        messageDao.getEntityById(5);
        messageDao.listBatch(message0,5,1);

        messageDao.countAll();
        messageDao.count(message0);
    }
}
