## USE & ANALYZE > Programming > R data visualization

visualizing data:
p <- seq(0, 1, 0.01)
scatterplot: plot(my_df$name1, my_df$name2)
line: plot(... type=”l”)
plot(var1 ~ var2))
univariate boxplot: boxplot(my_df$var_name)
multivariate boxplot: boxplot(var1 ~ var2)
histogram: hist(data, breaks=)
frequencies: table()
multivariable: table(my_df$var1, my_df$var2) 
mosaicplot(table(my_df$var1, my_df$var2) )
mosaicplot(var1 ~ var2)
relative frequencies: table(my_df$my_var)/length(my_df$my_var)
barplot(table())
plot in three rows: par(mfrow = c(3, 1))
xlimits <- range(data1)
hist( … xlim=xlimits)
plot_ss(x = mlb11$at_bats, y = mlb11$runs,  x1, y1, x2, y2)
showSquares=T/F
leastSquares=T/F
OLS best-fit: lm(y ~ x, my_df)
summary(lm(...)
line: abline()
abline(lm(...))
qqnorm(m1$residuals)
qqline(m1$residuals)
hist(m1$residuals)
account for overlapping data point: plot(jitter(x), y)

library for complex graphs: http://ggplot2.org/ 
