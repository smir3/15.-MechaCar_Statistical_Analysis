# MechaCar_Statistical_Analysis

Deliverable 1: From the above output we can see that:

 ![](Images/Multiple%20Linear%20Regression.png)

The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

Deliverable 2:
![](Images/total%20summary.png)
![](Images/Summary%20by%20lot.png)

With the understanding that the design specifications for the MechaCar suspension coils mandate that the variance of the suspension coils cannot exceed 100 pounds per square inch (PSI) .

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.

Similarly, but significantly more consistent, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, it is Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.

Standard deviation is one of the key methods that analysts, portfolio managers, and advisors use to determine risk. When the group of numbers is closer to the mean, the investment is less risky; when the group of numbers is further from the mean, the investment is of greater risk to a potential purchaser.

Securities that are close to their means are seen as less risky, as they are more likely to continue behaving as such. Securities with large trading ranges that tend to spike or change direction are riskier. In investing, risk in itself is not a bad thing, as the riskier the security, the greater potential for a payout.

Deliverable 3:
![](Images/T-test%20for%20all%20lots.png)
![](Images/lot1.png)
![](Images/lot2.png)
![](Images/lot3.png)


When it comes to comparing the MechaCar to its competition, the company should consider using an ANOVA test to compare the MechaCar in various categories that customers would care about: cost, city and highway fuel efficiency, horse power, safety rating, maintenance cost. ANOVA test is able to test to see if the means from multiple different samples are significantly similar or different. This means that the averages of different cars in these categories can be compared to the average of MecaCar. If the p value is greater than 0.05, then MecaCar has the same or similar performance within these categories (the null hypothesis). If the p value is less than 0.05, then MecaCar is significantly different in those categories. If it is significant different, then looking at the average of the MecaCar is the next step. If MecaCar's average is either below or above the other averages would show how it is performing against its competitors (below = worse, above = better).
