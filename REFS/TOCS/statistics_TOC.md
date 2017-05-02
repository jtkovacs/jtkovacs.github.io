<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/statistics.html">https://jtkovacs.github.io/REFS/HTML/statistics.html</a></p><table class="TOC"><tr><td>- [Probability & statistics](#probability-&-statistics)
	- [Notes](#notes)
	- [... in R](#...-in-r)
- [Set up an empty vector of 5000 NAs to store sample means:](#set-up-an-empty-vector-of-5000-nas-to-store-sample-means:)
- [Take 5000 samples of size 50 of 'area' and store all of them in 'sample_means50'.](#take-5000-samples-of-size-50-of-'area'-and-store-all-of-them-in-'sample_means50'.)
- [View the result. If you want, you can increase the bin width to show more detail by changing the 'breaks' argument.](#view-the-result.-if-you-want,-you-can-increase-the-bin-width-to-show-more-detail-by-changing-the-'breaks'-argument.)
	- [... in Python](#...-in-python)
	- [Sources](#sources)
		- [References](#references)
		- [Read](#read)
		- [Unread](#unread)
- [Linear Algebra](#linear-algebra)
- [Relationships & Trends](#relationships-&-trends)
- [Hypothesis & A/B Testing](#hypothesis-&-a/b-testing)
	- [References](#references)
	- [Read](#read)
	- [Unread](#unread)
</td></tr></table>
# Probability & statistics

## Notes

- https://docs.google.com/document/d/1e0wdTbj6TfpLqfOfYjzqOX17L0pUmNGGfSIdr-n_0BE/edit?usp=drive_web
- https://docs.google.com/document/d/1akczbgY2f6M-y2FHY649C917KToSU8tj2Y1A7bCfq7k/edit?usp=drive_web
- https://docs.google.com/document/d/1gWr73U7uhIxzi8MOODNMafwDK7l-BDg3HsCEyc4xaGE/edit?usp=drive_web

## ... in R

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


## ... in Python

numpy has an arrays datatype, essential for analytic operations. arrays are like lists, but you can perform elementwise calculations on them and, unlike lists, 
they are cannot contain multiple types within one array; they are type coercive. 

```Python
# create an array: 
array_name = np.array(list_name)
np.array([list1],[list2])
np.column_stack((list1, list2))

# subsetting arrays is the same as for lists, plus:
# conditional selection: 
bmi[bmi>23]; 
# access specific cell: 
array_name[row,col]

# check dimensions: 
a_name.shape, a_name.size
# calculate average: 
np.mean(list_name)
# calculate median: 
np.median(list_name)
# calculate st dev: 
np.std(list_name)
# check correlation: 
np.corrcoef(list1,list2)
# add: 
np.sum(list_name)
# simulate random data: 
np.round(np.random.normal(mean, stdev, #obs), 2)

import random
random.choice(strname)
random.randint(a_inclusive,b_inclusive)
```

## Sources

### References

- [1,](http://www.dummies.com/how-to/content/statistics-for-dummies-cheat-sheet.html) [2,](http://web.mit.edu/~csvoss/Public/usabo/stats_handout.pdf) [3](https://drive.google.com/open?id=0B6XYyy1UbJ3XR2w5Snc2ck1BVFE)
- [CAUSEWeb statistics database](https://www.causeweb.org/cause/resources)
- [Andrew Gelman's round up of his stats writing](http://andrewgelman.com/2009/05/24/handy_statistic/)

### Read

- _The Seven Pillars of Statistical Wisdom_
- _Cartoon Guide to Statistics_ 
- _The Drunkard’s Walk_
- [Khan Academy -&nbsp;Probability &amp; Statistics](https://www.khanacademy.org/mission/probability)
- [What is a P-Value Anyway? 34 Stories](https://drive.google.com/open?id=1lNnLujwLNRt_dDBdl0S31bDPtw0-da9PXiImPjBusdE)
- [The normal distribution: A derivation from basic principles](http://courses.ncssm.edu/math/Talks/PDFS/normal.pdf)
- [Intuition behind normal distribution](http://math.stackexchange.com/questions/940189/intuition-behind-normal-distribution-forumula)
- [Intuition behind standard deviation](http://stats.stackexchange.com/questions/85387/intuition-behind-standard-deviation)
- [Mean absolute deviation versus standard deviation](http://stats.stackexchange.com/questions/81986/mean-absolute-deviation-vs-standard-deviation)
- [The advantages of the mean deviation](http://www.leeds.ac.uk/educol/documents/00003759.htm)
- [Difficult concepts in statistics](https://learnandteachstatistics.wordpress.com/2013/06/24/difficult-concepts/)

### Unread

- [A concrete introduction to probability using Python](http://nbviewer.jupyter.org/url/norvig.com/ipython/Probability.ipynb)
- [Statistical Rethinking: A Bayesian Course in R](http://xcelab.net/rm/statistical-rethinking/)
- [EdX - Intro. Probability](https://www.edx.org/course/mitx/mitx-6-041x-introduction-probability-1296#.U3yb762SzIo)
- [Probability theory: The logic of science](http://bayes.wustl.edu/etj/prob/book.pdf)
- [The Little Handbook of Statistical Practice](http://www.jerrydallal.com/LHSP/LHSP.HTM)
- [OpenIntro Statistics](https://www.openintro.org/stat/index.php)
- [Notation in probability in statistics](https://en.wikipedia.org/wiki/Notation_in_probability_and_statistics)
- Visualizations & interactives: [1, ](http://highered.mheducation.com/sites/0070000237/student_view0/visual_statistics.html) [2,](http://statpages.info/) [3,](http://www.math.uah.edu/stat/apps/index.html) [4](http://onlinestatbook.com/stat_sim/index.html)
- [British Medical Journal: Statistics notes](http://www.jerrydallal.com/LHSP/bmj.htm)
- [10 Modern Statistical Concepts Discovered by Data Scientists](http://www.datasciencecentral.com/profiles/blogs/10-modern-statistical-concepts-discovered-by-data-scientists)


# Linear Algebra

- [<i>Linear algebra</i>](http://joshua.smcvt.edu/linearalgebra/)
- [A first course in linear algebra](http://linear.ups.edu/)
- [PCA 4 Dummies: Eigenvectors/values &amp; dimension reduction](https://georgemdallas.wordpress.com/2013/10/30/principal-component-analysis-4-dummies-eigenvectors-eigenvalues-and-dimension-reduction/)

# Relationships & Trends

- [Contingency table calculator](http://www.physics.csbsju.edu/stats/contingency_NROW_NCOLUMN_form.html)
- [Understanding Multivariate Research](https://drive.google.com/open?id=1-3rUQMEKFaPoNtDHLfZGIqZkgpqvr9b_2Tx7HQQzrTg)
- [Intuition on the definition of covariance](http://stats.stackexchange.com/questions/99094/intuition-on-the-definition-of-the-covariance)
- [What is covariance in plain language](http://stats.stackexchange.com/questions/29713/what-is-covariance-in-plain-language)
- [How would you explain covariance](http://stats.stackexchange.com/questions/18058/how-would-you-explain-covariance-to-someone-who-understands-only-the-mean)
- [Correlation &amp; R<sup style="background-color:transparent">2</sup>](http://www.win-vector.com/blog/2011/11/correlation-and-r-squared/)
- [r and R<sup>2</sup>](http://prometheuswiki.publish.csiro.au/tiki-index.php?page=r+and+R2)
- [Is R<sup>2</sup> useful or dangerous?](http://stats.stackexchange.com/questions/13314/is-r2-useful-or-dangerous/)
- [Simple linear regression output interpretation](http://stats.stackexchange.com/questions/13266/simple-linear-regression-output-interpretation/13269#13269)
- [Khan Academy: Regression](https://www.khanacademy.org/math/probability/regression)
- [Statistical Model Specification and Validation](http://faculty.chicagobooth.edu/midwest.econometrics/papers/megspanos.pdf)
- [Specification Errors](http://ocw.uc3m.es/economia/econometrics/lecture-notes-1/Topic5_logo.pdf)
- [Notes on model specification](http://www.nyu.edu/classes/nagler/quant2/notes/model_specification_oh.pdf)
- [Overadjustment bias and unnecessary adjustment](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2744485/)
- [The Chicago Guide to Writing About Multivariate Analysis](https://drive.google.com/open?id=1rbtRgb84K1WhncEmz4rrgU11YHKtCYPpiaGofKrEWbQ)
- [Introductory Econometrics](http://www3.wabash.edu/econometrics/EconometricsBook/index.htm)
- [7 types of regression you should know](https://www.analyticsvidhya.com/blog/2015/08/comprehensive-guide-regression/)
- [10 types of regression: which to use?](http://www.datasciencecentral.com/profiles/blogs/10-types-of-regressions-which-one-to-use)
- [Going Deeper into Regression Analysis with Assumptions](https://www.analyticsvidhya.com/blog/2016/07/deeper-regression-analysis-assumptions-plots-solutions/)
- [Plots &amp; Solutions](https://www.analyticsvidhya.com/blog/2016/07/deeper-regression-analysis-assumptions-plots-solutions/)
- [How to detect spurious correlations, and how to find the real ones](http://www.datasciencecentral.com/profiles/blogs/tutorial-how-to-detect-spurious-correlations-and-how-to-find-the-)
- [The best kept secret about linear and logistic regression](http://www.datasciencecentral.com/profiles/blogs/the-best-kept-secret-about-linear-and-logistic-regression)
- [Jackknife logistic and linear regression for clustering and predictions](http://www.datasciencecentral.com/profiles/blogs/jackknife-logistic-and-linear-regression)
- [STAT 501: Regression Methods @ Penn State](https://onlinecourses.science.psu.edu/stat501/node/2)
- Regression tutorias:[1,](http://blog.minitab.com/blog/adventures-in-statistics/regression-analysis-tutorial-and-examples) [2,](http://denninginstitute.com/modules/dau/stat/regression/linregsn/linregsn_frm.html) [3,](http://illuminations.nctm.org/Search.aspx?view=search&amp;type=ac&amp;kw=regression) [4a,](https://www.causeweb.org/cause/archive/repository/StarLibrary/activities/miller2001/) [4b,](https://www.causeweb.org/cause/archive/repository/StarLibrary/activities/miller2001/Reg_Residuals.htm) [5](http://statpages.info/#Regression)
- [Rebuild OLS estimators in R](https://economictheoryblog.com/2016/02/20/rebuild-ols-estimator-manually-in-r/)
- [Fitting and interpreting linear models in R](http://blog.yhat.com/posts/r-lm-summary.html)
- [Understanding lm() output](http://www.montana.edu/screel/Webpages/conservation%20biology/Interpreting%20Regression%20Coefficients.html#/)
- [Residuals plot](http://www.r-tutor.com/elementary-statistics/simple-linear-regression/residual-plot)
- [Guide to interpreting R regression output](https://rstudio-pubs-static.s3.amazonaws.com/119859_a290e183ff2f46b2858db66c3bc9ed3a.html)
- [Don’t use correlation to track prediction performance](http://www.win-vector.com/blog/2013/02/dont-use-correlation-to-track-prediction-performance/)
- [Statistical Soup: ANOVA, ANCOVA, MANOVA, &amp; MANCOVA](http://www.statsmakemecry.com/smmctheblog/stats-soup-anova-ancova-manova-mancova)
- [Understanding beta binomial regression](http://varianceexplained.org/r/beta_binomial_baseball/)
- [Econometric analysis of panel data, class notes](http://people.stern.nyu.edu/wgreene/Econometrics/PanelDataNotes.htm)
- [Applied econometrics syllabus](http://courses.umass.edu/econ753/)


# Hypothesis & A/B Testing

## References

- Choosing the right test: [1,](http://www.graphpad.com/support/faqid/1790/) [2](http://www.ats.ucla.edu/stat/mult_pkg/whatstat/default.htm)

## Read

- [Khan Academy - Inferential Statistics](https://www.khanacademy.org/math/probability/statistics-inferential)
- [There is only one test](http://allendowney.blogspot.com/2011/05/there-is-only-one-test.html)
- [There is still only one test](http://allendowney.stfi.re/2016/06/there-is-still-only-one-test.html?sf=gezyvye)
- [Understanding statistical inference](https://learnandteachstatistics.wordpress.com/2015/11/09/understanding-statistical-inference/)
- [Statistical inference is only mostly wrong](http://allendowney.blogspot.com/2015/03/statistical-inference-is-only-mostly.html)
- [Statistical significance abuse](https://www.painscience.com/articles/statistical-significance.php)
- [Ignoring the ‘difference in differences’](https://www.theguardian.com/commentisfree/2011/sep/09/bad-science-research-error)
- [Hypothesis testing is only mostly useless](http://allendowney.blogspot.com/2015/05/hypothesis-testing-is-only-mostly.html)
- [Twelve p value misconceptions](http://www.perfendo.org/docs/BayesProbability/twelvePvaluemisconceptions.pdf)
- [p-hacking](http://blogs.discovermagazine.com/neuroskeptic/2015/05/18/p-hacking-a-talk-and-further-thoughts/#.V18pwRMrLC2)
- [The garden of forking paths](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf)
- [Life after p-hacking](http://www.acrwebsite.org/volumes/v41/acr_v41_15833.pdf)
- [The correct interpretation of the confidence interval](https://www.reddit.com/r/statistics/comments/2xg0cs/the_correct_interpretation_of_the_confidence/)
- [Intuition for Chi-squared test](https://www.quora.com/What-is-the-most-intuitive-explanation-for-the-chi-square-test)
- [Why pseudoscientists like chi-square](http://bblais.blogspot.com/2010/09/why-pseudoscientists-like-chi-square.html)
- [Chi-square versus psi](http://bblais.blogspot.com/2010/08/orthodox-statistics-conducive-to-pseudo.html)
- [What is Chi-squared not for?](http://www.ling.upenn.edu/~clight/chisquared.htm)
- [How to understand degrees of freedom](http://stats.stackexchange.com/questions/16921/how-to-understand-degrees-of-freedom/17148#17148)
- DOF: [1, ](http://www.statsdirect.com/help/basics/degrees_of_freedom.htm) [2](http://www.jerrydallal.com/LHSP/dof.htm)
- [Deduction, induction, and abduction](http://web.bryant.edu/~bblais/deduction-induction-and-abduction-oh-my.html)
- [Bayes’ theorem with Legos](https://www.countbayesie.com/blog/2015/2/18/bayes-theorem-with-lego)
- [Believe your friends’ allergies](https://www.countbayesie.com/blog/2016/1/22/why-you-should-believe-your-friends-claims-about-food-allergies)
- [Hans Solo and Bayesian priors](https://www.countbayesie.com/blog/2015/2/18/hans-solo-and-bayesian-priors)
- [Bayesian reasoning in the Twilight Zone](https://www.countbayesie.com/blog/2016/3/16/bayesian-reasoning-in-the-twilight-zone)
- [Bayes’ factor](https://www.countbayesie.com/blog/2015/2/27/building-a-bayesian-voight-kampff-test)

## Unread

- [Understanding the beta distribution](http://varianceexplained.org/statistics/beta_distribution_and_baseball/)
- [Parameter estimation](https://www.countbayesie.com/blog/2015/4/4/parameter-estimation-the-pdf-cdf-and-quantile-function)
- [Bayesian priors for parameter estimation](https://www.countbayesie.com/blog/2015/4/4/parameter-estimation-adding-bayesian-priors)
- [Understanding empirical Bayes estimation](http://varianceexplained.org/r/empirical_bayes_baseball/)
- [Confidence intervals vs. Bayesian intervals](http://bayes.wustl.edu/etj/articles/confidence.pdf)
- [Understanding credible intervals](http://varianceexplained.org/r/credible_intervals_baseball/)
- [Hypothesis testing that makes sense](https://www.countbayesie.com/blog/2015/4/25/bayesian-ab-testing)
- [How Bayes’ theorem, probability, logic and data intersect](https://www.springboard.com/blog/probability-bayes-theorem-data-science/)
- [Learning to love Bayesian statistics](http://www.oreilly.com/pub/e/3707)
- [The death of statistical tests of hypotheses](http://www.datasciencecentral.com/profiles/blogs/the-death-of-the-statistical-test-of-hypothesis)
- [Biased vs unbiased: debunking statistical myths](http://www.datasciencecentral.com/profiles/blogs/biased-vs-unbiased-debunking-statistical-myths)
- [Lognormal distributions across the sciences: Key and clues](http://stat.ethz.ch/~stahel/lognormal/bioscience.pdf)
- [<font size="2">Wired - AB testing</font>](http://www.wired.com/2012/04/ff_abtesting/)
- [Udacity - AB testing](https://www.udacity.com/courses/ab-testing--ud257)
- [Understanding Bayesian A/B testing](http://varianceexplained.org/r/bayesian_ab_baseball/)
- [Falsely reassuring: analyses of ALL p values](http://datacolada.org/41)
