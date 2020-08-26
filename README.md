# Data Science Question A Day

This is an accompanying repository for the questions posted on Twitter by the account, Data Science Question a Day. You can follow the twitter account [@data_question](https://twitter.com/data_question) for daily questions on Data Science, Machine Learning, R programming and Python (possibly in future).

# How To Contribute?
At present, I am not accepting any questions, primarily because I don't have a manageable system in place to accept user contributions. This will change with future releases.
However, you are free to raise issues for any corrections you find in any of the questions.

# Disclaimer
Although this repository contains questions, the purpose of it is to act as a temporary placeholder for storing questions. Future plan is to migrate questions to more robust database and make the questions accessible via a website.

# License
This project is licensed under the terms of MIT license.

Following is the list of questions of questions, arranged by date and with a little short description of the question.

## Question List
|S.No|Date|Topic|Description|
|:|:|:|:|
|1|03 August 2020|
Object Types: R

|
When you try to load data like `AirPassengers` in R, using the function `data()`, the dataset is loaded as a `Promise`, rather than a `dataframe`. What is `Promise`?

||1|05 August 2020|
1. Linear Regression
2. R
3. Interaction Effect

|
Let's say you have a build a linear regression model using the following command:
```
lm(mpg ~ cyl*disp, mtcars)
```
What would the model predict at `cyl = 2` and `disp = 3`? Assume coefficient for intercept, cyl, disp and cyl:disp as i, c, d and c:d, respectively.

![](../images/questions/q_05082020.png)

||1|06 August 2020|
Linear Regression

|
Assuming, only the following information is provided to you about the residuals' distributions of different linear regression models, and then asked to choose the best model among the following options? Note the following notations: median: median, min: minimum, max: maximum

||1|07 August 2020|
Linear Regression in R

|
While viewing the summary of linear regression model built in R, you sometime see stars for independent variables. For the following example, shown below, which interpretation is correct?

![](../images/questions/q_07082020.png)

||1|08 August 2020|
R square and Adjusted R square

|
Which of the following is true about R square and adjusted R square?
1. R square always increases as more terms are added to the model
2. Adjusted R square is always less than R square
3. Adjusted R square can be negative
4. R square can be negative

||1|09 August 2020|
Ordinary Least Squares Fitting

|
Which of the following offset is used in linear least squares fitting?

![](../images/questions/q_09082020_1.png)
![](../images/questions/q_09082020_2.png)

||1|10 August 2020|
1. Pearson Correlation Coefficient
2. R square

|
In a linear regression setting of the form Y ~ X1 + X2 + X3, the  R square was found to be 0.81, the pearson correlation coefficient between Y and X1 is?

||1|11 August 2020|
1. Pearson correlation coefficient

|
Let's assume the correlation between $X$ and $Y$ is 1. Let's also assume $X_a = 1 + X$ and $Y_a = 2 - 3Y$. The correlation between $X_a$ and $Y_a$ is:

||1|12 August 2020|
1. F-Statistic test

|
Suppose you are fitting a simple linear regression model of the form $\hat{y}=\beta_0 + \beta_1x$. The model has $R^2 = 0.10$ and F-statistic test's $p-value = 0.0067$. (The cut-off for $p-value$ is $0.05$)

||1|13 August 2020|
1. R programming
2. Logical vectors

|
Assume you are coercing the following character vector `x = c("T", "TRUE", "True", "true")` to a logical vector. What would be the output?

||1|14 August 2020|
1. Spearman coefficient

|
As you can see from the following image, that $X$ and $Y$ are monotonically related. What would the spearman correlation coefficient between $X$ and $Y$. It's given that pearson correlation coefficient is 0.86.

![](../images/questions/q_14082020.png)

||1|15 August 2020|
1. R programming

|
What would the following code return in R?
```r
isTRUE(c(TRUE, TRUE, TRUE, TRUE))
isFALSE(c(FALSE, FALSE, FALSE, FALSE))
```

||1|16 August 2020|
1. Linear Regression

|
Three important assumptions of linear regression are: linearity, homoscedasticity and normality. Two out of the following three models are violating two of the assumptions stated above. Which are those? (Assume you have to judge visually only)

![](../images/questions/q_16082020.png)

||1|17 August 2020|
1. R programming
2. `all.equal()` Function

|
In R programming, `all.equal()` function can be used to compare near equality of two objects `x` and `y`. What would the following code return?
```r
x = c( 1, 2, 3)
y = c( 1, 3, 2)
if(all.equal(x,y)) "vectors are equal" else "vectors are not equal"
```

||1|18 August 2020|
1. Probability
2. Normal Distributions
	
|
Given the following CDFs (Cummulative distribution functions), what can you say about the normal distributions: $y_1, y_2, y_3$?

![](../images/questions/q_18092020.png)

||1|19 August 2020|
1. R Programming
2. `...` operator

|
In R, would the following work?
```r
z = function(...){
	..1 + ..2 + ..3 + ..4
}
z(1,2,3,4)
```

||1|20 August 2020|
1. One-way ANOVA

|
You hired an external agency to teach Data Science at your company. The agency offers three courses, Beginner, Intermediate and Advanced. You aren't sure which course is needed at the company, so you send 10 employees to beginner, 10 to intermediate and 10 to advanced. After the training, you gave them a test. To compare the three courses which method should you choose?

||1|21 August 2020|
1. Normal Distribution

|
Given the following normal distributions, what can you say about the green curve and red curve? (Assuming same number of observations for both curves and sd refers to std. deviation)
![](../images/questions/q_21082020.png)

||1|22 August 2020|
1. ANOVA
	
|
Suppose you want to examine the safety of compact cars, midsize cars, and full-size cars. For a sample of $n$ cars of each type, you collected the reading of pressure applied to the driver's head during the car crash. You conducted the anova test (with $\alpha = 0.05$) to test whether the mean pressure is equal for each types and found the p-value to be 0.0034. Select the true statement.
 
||1|23 August 2020|
1. ANOVA
2. Hypothesis Testing

|
The null and alternate hypothesis of ANOVA are:
1. The groups have same mean i.e. $\mu_1 = \mu_2 = ... = \mu_n$
2. The means of groups are not equal i.e. $\mu_1 \ne \mu_2 \ne ... \ne \mu_n$
3. The groups have same variances i.e. $\sigma^{2}_{1} = \sigma^{2}_{2} = ... = \sigma^{2}_{n}$
4. The groups do not have same variances i.e. $\sigma^{2}_{1} \ne \sigma^{2}_{2} \ne ... \ne \sigma^{2}_{n}$

||1|24 August 2020|
1. F Distribution

|
Among the following options, which one can't be a PDF for F distribution?
![](../images/questions/q_24082020.png)

||1|25 August 2020|
1. R Programming
2. Operator precedence

|
In R the following would produce?
```r
-4^2
```

||1|26 August 2020|
1. ANOVA
2. One way ANOVA
3. Two way ANOVA

|
To assess the purchase likelihood of a product on a shelf, you designed an experiment with two factors, shelf display (organized or disorganized) and product quantity (low, medium, high). Which method should you choose for comparison?

||1|27 August 2020|
1. R programming

|
Output of following is:
```r
x = -1
1:x
```

||1|28 August 2020|
1. R programming

|
Let's say you have a vector of length 5, and you wanted to change it's elements iteratively. So, you wrote a for loop as shown below. What would happen when you run the following code?
```r
x = numeric(5)
for(i in 1:6){
    x[i] = i
}
```

||1|31/07/2020|
Welch's t-test

|
Given two samples from two different populations, sample A with (mean, std. deviation, n) as (74, 9, 15) and sample B with (mean, std. deviation, n) as (69, 5, 18).Which of the following test should you choose to test the hypothesis that population mean of A is equal to population mean of B?

|