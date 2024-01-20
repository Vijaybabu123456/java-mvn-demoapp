package demo;

public class DemoApp {
    public static void main(String[] args) {
        System.out.println("Hello world! java coding is fun!!");

        Timestamp ts = new Timestamp();
        String currentTimestamp = ts.getTimestamp();
		System.out.println("The current local Timestamp is: " + currentTimestamp);
    }
}
