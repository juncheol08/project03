package kr.co.teaspoon;

import kr.co.teaspoon.dto.Sample;
import org.junit.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LombokTest {
    private static final Logger log = LoggerFactory.getLogger("kr.co.teaspoon.LombokTest.class");

    @BeforeClass
    public static void testStart() {
        System.out.println("전체 테스트 시작");
    }

    @Before
    public void beforeTest() {
        System.out.println("JUnit 테스트 시작");
    }
    @After
    public void afterTest() {
        System.out.println("JUnit 테스트 시작");
    }

    @AfterClass
    public static void testEnd() {
        System.out.println("전체 테스트 시작");
    }



    @Test
    public void testLombok() {
        Sample dto = new Sample();
        dto.setNo(1);
        dto.setName("김기태");
        System.out.println(dto.toString());
        log.info(dto.toString());
    }
}
