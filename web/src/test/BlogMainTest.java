import com.web.dao.BlogMainDao;
import com.web.entity.BasicVo;
import com.web.entity.BlogMain;
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
public class BlogMainTest {

    @Autowired
    private BlogMainDao blogMainDao;

    @Test
    public void test() {

//        BlogMain blogMain = new BlogMain();
//        blogMainDao.save(blogMain);
//        BlogMain blogMain1 = new BlogMain();;
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(blogMain);
//        list.add(blogMain1);
//        blogMainDao.saveBatch(list);


//        blogMainDao.remove(1);
//        int[] a = {2,3};
//        blogMainDao.removeBatch(a);
//
//        BlogMain blogMain = new BlogMain();
//        blogMain.setContent("fd");
//        blogMainDao.update(blogMain);
        BlogMain blogMain = new BlogMain();
        blogMainDao.getEntityById(4);
        blogMainDao.listBatch(blogMain,5,2);

        blogMainDao.countAll();
        blogMainDao.count(blogMain);


    }
}
