import com.web.dao.ProblemDAO;
import com.web.entity.BasicVo;
import com.web.entity.Problem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-MVC.xml"
        ,"classpath:config/spring-mybatis.xml"})
public class ProblemTest {

    @Autowired
    private ProblemDAO problemDAO;

    @Test
    public void saveTest() {
        Problem problem = new Problem(0, 0, "贪心", "树结构", "简单", "符字串统计", "Bat是一个淘气的小朋友，有一天他得到了一个字符串，他想统计一下字符串中的小写字母(‘a’-’z’)的个数，快来帮帮他吧。", "输入一个字符串",
                "输出一个整数，代表小写字母的个数。",
                "字符串中不包含空格、字符串长度<10000",
                "AabcBB",
                "3",1, 2);
        int pos = problemDAO.save(problem);
        System.out.println(pos);
    }

    @Test
    public void removeTest() {
        int pos = problemDAO.remove(1008);
        System.out.println(pos);
    }

    @Test
    public void removeBatchTest() {
        int a[] = {1006, 1007};
        int pos = problemDAO.removeBatch(a);
        System.out.println(pos);
    }

    @Test
    public void updateTest() {
        Problem problem = new Problem(1005, 0, "回溯", "树结构", "中等", "彩色丝带", "a", "a", "a", "a", "a", "a", 100, 22);
        int pos = problemDAO.update(problem);
        System.out.println(pos);
    }

    @Test
    public void listBatch() {
        Problem problem = new Problem();
        problem.setTitle("彩色");
//        problem.setProblem_type(0);
//        problem.setProblemAlgorithm("回溯");
//        problem.setData_structure("树结构");
//        problem.setProblemDifficulty("简单");
        List<BasicVo> problemList = problemDAO.listBatch(problem, 0, 7);
        for (BasicVo b : problemList) {
            Problem bb =(Problem)b;
            System.out.println(bb.getId()+" "+bb.getProblemAlgorithm()+" "+bb.getProblemStructure()+" "+bb.getProblemDifficulty()+" "+bb.getMemoryLimit()+" "+bb.getTimeLimit());
        }
    }

    @Test
    public void count() {
        Problem problem = new Problem();
//        problem.setProblem_type(1);
        problem.setProblemAlgorithm("回溯");
//        problem.setData_structure("tree");
        problem.setProblemDifficulty("中等");
        int count = problemDAO.count(problem);
        System.out.println(count);
    }

    @Test
    public void get() {
        Problem problem = (Problem) problemDAO.getEntityById(1004);
        System.out.println(problem.getProblemAlgorithm()+" "+problem.getProblemStructure() + " " + problem.getProblemDifficulty());
    }

    @Test
    public void countAll() {
        int count = problemDAO.countAll();
        System.out.println(count);
    }
}
