public class SingletonTest {

    public static void main(String[] args) {

        Logger obj1 = Logger.getInstance();
        Logger obj2 = Logger.getInstance();

        obj1.log("First Message");
        obj2.log("Second Message");

        if (obj1 == obj2) {
            System.out.println("Only one Logger object is created.");
        } else {
            System.out.println("Multiple Logger objects are created.");
        }
    }
}