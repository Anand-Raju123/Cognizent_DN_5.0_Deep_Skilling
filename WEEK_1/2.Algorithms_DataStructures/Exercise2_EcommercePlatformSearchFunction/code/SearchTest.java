package WEEK_1.Algorithms_DataStructures.Exercise2_EcommercePlatformSearchFunction.code;
import java.util.Arrays;
import java.util.Comparator;

public class SearchTest {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mouse", "Electronics"),
                new Product(103, "Phone", "Electronics"),
                new Product(104, "Keyboard", "Electronics")
        };

        Product p1 =
                SearchOperations.linearSearch(products, "Phone");

        if (p1 != null) {
            System.out.println(
                    "Linear Search Found: " + p1.productName);
        } else {
            System.out.println("Product not found");
        }

        Arrays.sort(
                products,
                Comparator.comparing(p -> p.productName)
        );

        Product p2 =
                SearchOperations.binarySearch(products, "Phone");

        if (p2 != null) {
            System.out.println(
                    "Binary Search Found: " + p2.productName);
        } else {
            System.out.println("Product not found");
        }
    }
}