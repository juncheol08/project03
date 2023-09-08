package kr.co.teaspoon;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.inject.Inject;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/applicationContext.xml"})
public class MyBatisTest {
//    private static final Logger logger = LoggerFactory.getLogger(kr.co.teaspoon.MyBatisTest.class);

    private static final Logger logger = LoggerFactory.getLogger(MyBatisTest.class);
    @Inject
    private SqlSessionFactory sqlFactory;

    @Test
    public void testFactory() {
        logger.info("sqlFactory : "+sqlFactory);
        System.out.println("sqlFactory : "+sqlFactory);
    }
    @Test
    public void testSession() throws Exception {
        try(SqlSession session = sqlFactory.openSession()) {
            logger.info("MyBatis Connection success! session : "+session);
            System.out.println("MyBatis Connection success! session : "+session);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
