import org.junit.Test;
import static org.junit.Assert.*;

public class AssertionsTest {

    @Test
    public void testAssertions() {

        assertEquals(10, 5 + 5);

        assertTrue(10 > 5);

        assertFalse(10 < 5);

        String str1 = null;
        assertNull(str1);

        String str2 = "Anand Raju";
        assertNotNull(str2);

        String a = "Java";
        String b = a;
        assertSame(a, b);

        String x = new String("Hello");
        String y = new String("Hello");
        assertNotSame(x, y);
    }
}