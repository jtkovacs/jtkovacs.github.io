## USE & ANALYZE > Statistics > R statistics

>> rowSums(my_mat)
>> colSums(my_mat)
>> mean(my_vec, trim = 0, na.rm = FALSE, ...)  # trim is used to drop some observations from both end of the sorted vector; When trim = 0.3, 3 values from each end will be dropped from the calculations to find mean. na.rm is used to remove the missing values from the input vector. If there are missing values, then the mean function returns NA; To drop the missing values from the calculation use na.rm = TRUE. which means remove the NA values.

>> my_vec1 + my_vec2  # elementwise sum
>> sum of vector elements: sum(my_vector)
>> mean(my_vector)
>> seq(a,b,length.out=n)
>> crossprod(x_vec,y_vec)


>> ceiling(x)
>> floor(x)
>> trunc(x, ...)
>> round(x, digits = 0)
>> signif(x, digits = 6)

functions:
absolute value: abs(), abs(x1-x2) gives absolute difference

mean()
nchar(my_vec)  # counts number of characters in a vector of characters (strings)
max(my_data, na.rm = FALSE, ...)
min(my_data)
summary()
var()
median()
confidence intervals: inference(my_dav, type="ci", method="simulation", conflevel=0.9, est="mean", boot_method="perc")
method=simulation, theoretical
boot_method=perc, se
est=mean, median, proportion
hypothesis testing: inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical")
alternative=”greater”
inference(us12$response, est = "proportion",  type = "ci", method = "theoretical",  success = "atheist")
compare: by(numerical_dataset, categorical_dataset, mean/length/...)
cor(var1, var2)

http://www.rdocumentation.org/packages/stats/versions/3.3.1/topics/sd?

probability (in/dependent events and simulating event sequences)
simulate: 
possible_values <- c("heads", "tails")
sample(possible_values, size=, replace=, prob=c())

generate sample distribution: The sampling distribution is calculated by resampling from the population, the bootstrap distribution is calculated by resampling from the sample; To construct the 95% bootstrap confidence interval using the percentile method, we estimate the values of the 5th and 95th percentiles of the bootstrap distribution.
# Set up an empty vector of 5000 NAs to store sample means:
sample_means50 <- rep(NA, 5000)

# Take 5000 samples of size 50 of 'area' and store all of them in 'sample_means50'.
for (i in 1:5000) {
 samp <- sample(area, 50)
 sample_means50[i] <- mean(samp)
}

# View the result. If you want, you can increase the bin width to show more detail by changing the 'breaks' argument.
hist(sample_means50, breaks = 13)

calculate 95 pct conf interval:
se <- sd(samp)/sqrt(60)
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)

inference:
ANOVA test: https://statistics.laerd.com/statistical-guides/one-way-anova-statistical-guide.php, https://explorable.com/anova 

 multivariate regression, looking for the best model:
start with a full model: 
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
check p values for each coefficient; drop one with highest p-value
drop the variable that, when dropped, leads to the best improvement in R2
