import com.web.dao.FactionDao;
import com.web.entity.BasicVo;
import com.web.entity.Faction;
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
public class FactiomTest {

    @Autowired
    private FactionDao factionDao;

    @Test
    public void test(){

//        Faction faction = new Faction();
//        factionDao.save(faction);
//        Faction faction0 = new Faction();
//        List<BasicVo> list = new ArrayList<BasicVo>();
//        list.add(faction);
//        list.add(faction0);
//        factionDao.saveBatch(list);



//        factionDao.remove(1);
//        int[] a = {2,3};
//        factionDao.removeBatch(a);

//        Faction faction = new Faction();
//        faction.setId(4);
//        faction.setCreationdate("dasdsa");
//        factionDao.update(faction);


//
//        Faction faction = new Faction();
//        factionDao.getEntityById(4);
//        factionDao.listBatch(faction,5,2);
//        factionDao.countAll();
        Faction faction = new Faction();
        factionDao.count(faction);




    }
}
