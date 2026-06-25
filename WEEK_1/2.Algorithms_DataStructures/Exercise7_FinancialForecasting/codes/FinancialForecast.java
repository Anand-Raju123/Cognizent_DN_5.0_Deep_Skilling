package WEEK_1.Algorithms_DataStructures.Exercise7_FinancialForecasting.codes;

public class FinancialForecast {

    public double calculateFutureValue(double currentValue,double growthRate,int years) {
        if (years == 0) {
            return currentValue;
        }
        return calculateFutureValue(
                currentValue * (1 + growthRate),
                growthRate,
                years - 1
        );
    }
}