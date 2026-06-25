import org.junit.Before;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;

public class AAA_TestExample {

    int a;
    int b;

    // 🔹 Setup Method (runs before each test)
    @Before
    public void setUp() {
        System.out.println("Setup: Initializing values");
        a = 10;
        b = 5;
    }

    // 🔹 Teardown Method (runs after each test)
    @After
    public void tearDown() {
        System.out.println("Teardown: Cleaning up after test");
    }

    // 🔹 Test 1 (AAA Pattern)
    @Test
    public void testAddition() {

        // ARRANGE
        int expected = 15;

        // ACT
        int result = a + b;

        // ASSERT
        assertEquals(expected, result);
    }

    // 🔹 Test 2 (AAA Pattern)
    @Test
    public void testSubtraction() {

        // ARRANGE
        int expected = 5;

        // ACT
        int result = a - b;

        // ASSERT
        assertEquals(expected, result);
    }
}