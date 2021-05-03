package coe318.lab3;
/**
 *
 * @author kclowes
 */
public class CounterTry {

    /**
     * The output should be:
     * <pre>
     * d0 = 0
     * d0 = 1
     * d0 = 2
     * d0 = 0
     *
     * Two digit counter...
     * d1, d2 digits: 00 d0 count = 0
     * d1, d2 digits: 01 d0 count = 1
     * d1, d2 digits: 02 d0 count = 2
     * d1, d2 digits: 03 d0 count = 3
     * d1, d2 digits: 10 d0 count = 4
     * d1, d2 digits: 11 d0 count = 5
     * d1, d2 digits: 12 d0 count = 6
     * d1, d2 digits: 13 d0 count = 7
     * d1, d2 digits: 20 d0 count = 8
     * d1, d2 digits: 21 d0 count = 9
     * </pre>
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Counter d1, d0;
        d0 = new Counter(3, null);
        for (int i = 0; i < 4; i++) {
            System.out.println("d0 = " + d0);
            d0.increment();
        }
        System.out.println("\nTwo digit counter...");
        d1 = new Counter(4, null);
        d0 = new Counter(4, d1);
        for (int i = 0; i < 10; i++) {
            System.out.println("d1, d2 digits: " +
                    d1.getDigit() + d0.getDigit() + " d0 count = " + d0);
            d0.increment();
        }

    }
}
