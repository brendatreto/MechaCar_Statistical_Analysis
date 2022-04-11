# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
We designed a linear regression model to predict the mpg of the given prototypes. Mpg was defined as the dependent variable, whilst vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD were set as independent. 

![linear_regression](https://user-images.githubusercontent.com/22451540/162786949-13e22905-de84-4684-ad8c-06a723df661b.PNG)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
With this particular set of information, we were able to tell that vehicle length and ground clearance provided sufficient data to declare that the variance is non-random.

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope is not considered zero. The p-value (5.35e-11) is smaller than the significance level. This provides sufficient evidence to reject the null hypothesis.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
We can confidently say that this model can predict mpg of protoypes. Using the r-squared as reference (0.7149), it can be inferred that there is a 71.49% chance that future prototypes will fit the model. 

## Summary Statistics on Suspension Coils

![total_summary](https://user-images.githubusercontent.com/22451540/162798001-14c76af4-25fc-4598-a178-c08ce5901e97.PNG)

![lot_summary](https://user-images.githubusercontent.com/22451540/162798094-5645a6e7-1c6e-449f-9a9c-ebf41f12c305.PNG)

According to the provided specifications the variance of the suspension coils should not exceed 100 pounds per square inch.
- In total the current manufacturing data meets these specifications with a variance of 62.29.
- Individually lots 1 (0.979) and 2 (7.46) do meet the criteria but lot 3 (170.28) does not.
