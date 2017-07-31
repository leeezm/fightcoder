package com.fightcoder.mapper;

import com.fightcoder.pojo.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by tym on 17-7-30.
 */
public class mapperTest {

    private ApplicationContext applicationContext;
    private UserMapper userMapper;

    @Before
    public void setup() throws Exception{
        applicationContext = new ClassPathXmlApplicationContext("config/spring-mybatis.xml");
         userMapper= (UserMapper) applicationContext.getBean("userMapper");
    }

    @Test
    public void testinsertUser(){

        userMapper.deleteByPrimaryKey(1);
//            User user = new User();
//            userMapper.insert(user);
    }
}
