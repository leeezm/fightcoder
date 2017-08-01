import com.web.dao.UserDao;
import com.web.entity.BasicVo;
import com.web.entity.User;
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
public class UserTest {
    @Autowired
    private UserDao userDao;

    @Test
    public void saveTest() {


//        //update
//        User user1 = new User();
//        user1.setId(5);
//        user1.setEmail("2312312");
//        userDao.update(user1);

        //get
//        User user = (User)userDao.getEntityById(5);
//        System.out.println(user.getId());
//        User user = new User();
//
//        List<BasicVo> users = userDao.listBatch(user,5,2);

//        count
        User user = new User();
        System.out.println(userDao.countAll());
        System.out.println(userDao.count(user));

//        //save
//        User user = new User();
//        System.out.println(userDao.save(user));
//
//        List<BasicVo> users = new ArrayList<BasicVo>();
//        User user0 = new User();
//        users.add(user);
//        users.add(user0);
//        System.out.println(userDao.saveBatch(users));

        //remove
       //userDao.remove(1);
//        int [] str  = {3,4};
//        userDao.removeBatch(str);
    }
}
