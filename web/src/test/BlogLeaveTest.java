import com.web.dao.BlogLeaveDao;
import com.web.entity.BasicVo;
import com.web.entity.BlogLeave;
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
public class BlogLeaveTest {

    @Autowired
    private BlogLeaveDao blogLeaveDao;

    @Test
    public void test() {

//        BlogLeave blogLeave = new BlogLeave();
//        blogLeaveDao.save(blogLeave);
//
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(blogLeave);
//        list.add(new BlogLeave());
//
//        blogLeaveDao.saveBatch(list);


//        blogLeaveDao.remove(1);
//        int[] a = {2,3};
//        blogLeaveDao.removeBatch(a);
//
//        BlogLeave blogLeave = new BlogLeave();
//        blogLeave.setCreatedate("das");
//        blogLeaveDao.update(blogLeave);

        blogLeaveDao.getEntityById(4);
        BlogLeave blogLeave = new BlogLeave();
        blogLeaveDao.listBatch(blogLeave,5,2);

        blogLeaveDao.countAll();
        blogLeaveDao.count(blogLeave);





    }
}
