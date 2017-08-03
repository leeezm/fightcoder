import com.web.dao.SubmitRecordDAO;
import com.web.entity.BasicVo;
import com.web.entity.Problem;
import com.web.entity.SubmitRecord;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml"
        ,"classpath:config/spring-mybatis.xml"})
public class SubmitRecordTest {

    @Autowired
    private SubmitRecordDAO submitRecordDAO;

    @Test
    public void saveTest() {
        SubmitRecord sr = new SubmitRecord(0,1004,"aa",0,1,1,"2017-08-03 11:38:00",100,1000,"AC","恭喜AC","1.java");
        int pos = submitRecordDAO.save(sr);
        System.out.println(pos);
    }

    @Test
    public void removeTest() {
        int pos = submitRecordDAO.remove(4);
        System.out.println(pos);
    }

    @Test
    public void removeBatchTest() {
        int a[] = {2, 3};
        int pos = submitRecordDAO.removeBatch(a);
        System.out.println(pos);
    }


    @Test
    public void listBatch() {
        SubmitRecord sr = new SubmitRecord();
        sr.setProblemId(1005);
        sr.setResult("AC");
        List<BasicVo> submitList = submitRecordDAO.listBatch(sr,0,5);
        for (BasicVo b : submitList) {
            SubmitRecord s =(SubmitRecord) b;
            System.out.println(s.getId()+" "+s.getTitle()+" "+s.getResult());
        }
    }

    @Test
    public void count() {
        SubmitRecord sr = new SubmitRecord();
        sr.setProblemId(1005);
        sr.setResult("AC");
        int count = submitRecordDAO.count(sr);
        System.out.println(count);
    }

    @Test
    public void get() {
        //题目id对应的题目一定要存在
        SubmitRecord sr = (SubmitRecord) submitRecordDAO.getEntityById(6);
        System.out.println(sr.getRunningMemory()+" "+sr.getTitle()+" "+sr.getResult());
    }

    @Test
    public void countAll() {
        int count = submitRecordDAO.countAll();
        System.out.println(count);
    }
}
