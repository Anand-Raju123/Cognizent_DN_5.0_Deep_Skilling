package WEEK_1.Algorithms_DataStructures.Exercise7_FinancialForecasting.codes;

public class ForecastTest {

    public static void main(String[] args) {

        FinancialForecast forecast = new FinancialForecast();

        double currentValue = 10000;
        double growthRate = 0.10; 
        int years = 5;

        double futureValue =
                forecast.calculateFutureValue(
                        currentValue,
                        growthRate,
                        years
                );

        System.out.println("Current Value : " + currentValue);
        System.out.println("Growth Rate   : " + (growthRate * 100) + "%");
        System.out.println("Years         : " + years);
        System.out.println("Future Value  : " + futureValue);
    }
}