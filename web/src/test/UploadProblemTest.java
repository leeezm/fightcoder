import com.web.dao.SubmitRecordDAO;
import com.web.dao.UploadProblemDAO;
import com.web.entity.BasicVo;
import com.web.entity.SubmitRecord;
import com.web.entity.UploadProblem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml"
        ,"classpath:config/spring-mybatis.xml"})
public class UploadProblemTest {

    @Autowired
    private UploadProblemDAO uploadProblemDAO;

    @Test
    public void saveTest() {
        UploadProblem up = new UploadProblem(0,3,8,"未通过","2017-08-04 15:23:00");
        int pos = uploadProblemDAO.save(up);
        System.out.println(pos);
    }

    @Test
    public void removeTest() {
        int pos = uploadProblemDAO.remove(1);
        System.out.println(pos);
    }

    @Test
    public void removeBatchTest() {
        int a[] = {3,4};
        int pos = uploadProblemDAO.removeBatch(a);
        System.out.println(pos);
    }


    @Test
    public void listBatch() {
        UploadProblem up = new UploadProblem();
        up.setInstUserId(2);
        //up.setStatus("待审核");
        List<BasicVo> submitList = uploadProblemDAO.listBatch(up,0,4);
        for (BasicVo b : submitList) {
            UploadProblem u =(UploadProblem) b;
            System.out.println(u.getId()+" "+u.getStatus());
        }
    }

    @Test
    public void count() {
        UploadProblem up = new UploadProblem();
//        up.setInstUserId(2);
        up.setStatus("待审核");
        int count = uploadProblemDAO.count(up);
        System.out.println(count);
    }

    @Test
    public void get() {
        UploadProblem up = (UploadProblem) uploadProblemDAO.getEntityById(7);
        System.out.println(up.getAddTime()+" "+up.getStatus()+" "+up.getInstUserId());
    }

    @Test
    public void countAll() {
        int count = uploadProblemDAO.countAll();
        System.out.println(count);
    }
}
