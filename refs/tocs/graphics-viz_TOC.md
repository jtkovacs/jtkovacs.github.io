<p class="path"><a href="../pkb.html">pkb contents</a> \> graphics viz | just under 539 words | updated 11/10/2017</p><div class="TOC">- &nbsp;1. [Who does viz?](#who-does-viz)
- &nbsp;2. [Graphic design principles](#graphic-design-principles)
- &nbsp;3. [Taxonomies of visualizations](#taxonomies-of-visualizations)
	- &nbsp;3.1. [Duarte](#duarte)
	- &nbsp;3.2. [Types of data visualizations](#types-of-data-visualizations)
- &nbsp;4. [What are Tufte's design principles?](#what-are-tuftes-design-principles)
- &nbsp;5. [Data viz in Python](#data-viz-in-python)
- &nbsp;6. [Data viz in R](#data-viz-in-r)
- &nbsp;7. [Sources](#sources)
	- &nbsp;7.1. [Cited](#cited)
	- &nbsp;7.2. [References](#references)
	- &nbsp;7.3. [Read](#read)
	- &nbsp;7.4. [Unread](#unread)
</div>

# 1. Who does viz?



# 2. Graphic design principles




# 3. Taxonomies of visualizations

## 3.1. Duarte

Duarte (2008) has an interesting taxonomy.

## 3.2. Types of data visualizations

Source: Eckerson, W., & Hammond, M. (2011). Visual reporting and analysis. TDWI Best Practices Report. TDWI, Chatsworth. Retrieved from http://www.smartanalytics.com.au/pdf/Advizor-TDWI_VisualReportingandAnalysisReport.pdf

![](../ILLOS/viz-types.png)

# 4. What are Tufte's design principles?

Trust the eye as a tool that extracts patterns from complex data. Provide viewers with dense information in high-resolution; maximize information, minimize clutter.


# 5. Data viz in Python

- [http://nbviewer.jupyter.org/github/plotly/python-user-guide/blob/master/Index.ipynb](http://nbviewer.jupyter.org/github/plotly/python-user-guide/blob/master/Index.ipynb)
- [http://nbviewer.jupyter.org/gist/darribas/4121857](http://nbviewer.jupyter.org/gist/darribas/4121857)


```Python
import matplotlib.pyplot as plt

# convert to int:
my_data = list(map(int, data_in)))

# linecharts/plots:
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
x_axis_ticks = list(range(len(my_data)))
ax.plot(x_axis_ticks, my_data, linewidth=2)
ax.set_title(my_title)
ax.set_xlim([0, len(sample)])
ax.set_xlabel(‘Axis name’)
ax.set_ylabel(‘Axis name’)
fig.save_fig(my_filename)

# table: see also tablib
from prettytable import PrettyTable
my_data_header = my_data[0]
x = PrettyTable(my_data_header)
x.add_row(my_data[1])

# plot all bars as barchart:
X = numpy.arange(len(my_data))
width = 0.25
plt.bar(X+width, prices, width)
plt.xlim(0, 5055)

# plot buckets:
from collections import Counter
def group_data_by_range(my_data):
talley = Counter()
for em in data:
bucket = 0
if em >=0 and em < 10:
bucket = 1
elif em >= 10 and em < 20:
bucket = 2
talley[bucket] += 1
return talley
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
plt.style.use(‘ggplot’)
colors = plt.rcParams[‘axes.color_cycle’]
for group in my_grouped_data:
ax.bar(group, my_grouped_data[group], color=colors[groups[group%len(my_grouped_data)])
labels = [‘Group 1’, ‘Group 2’ … ]
ax.legend(labels)
ax.set_title(‘Title’)
ax.set_xlabel(‘Axis name’)
ax.set_xticklabels(labels, ha=’left’)
ax.set_xticks(range(1, len(my_grouped_data)+1))
ax.set_ylabel(‘Axis name’)
plt.grid(True)
```


# 6. Data viz in R

- library for complex graphs: [http://ggplot2.org/](http://ggplot2.org/)

```R
p <- seq(0, 1, 0.01)

# scatterplot:
plot(my_df$name1, my_df$name2)

# line:
plot(... type=”l”)

plot(var1 ~ var2))

# univariate boxplot:
boxplot(my_df$var_name)
# multivariate boxplot:
boxplot(var1 ~ var2)

# histogram:
hist(data, breaks=)

# frequencies:
table()
# multivariable:
table(my_df$var1, my_df$var2)
mosaicplot(table(my_df$var1, my_df$var2) )
mosaicplot(var1 ~ var2)

# relative frequencies:
table(my_df$my_var)/length(my_df$my_var)

barplot(table())

# plot in three rows:
par(mfrow = c(3, 1))
xlimits <- range(data1)
hist( … xlim=xlimits)
plot_ss(x = mlb11$at_bats, y = mlb11$runs,  x1, y1, x2, y2)
showSquares=T/F
leastSquares=T/F

# OLS best-fit:
lm(y ~ x, my_df)
summary(lm(...)

# line:
abline()
abline(lm(...))
qqnorm(m1$residuals)
qqline(m1$residuals)
hist(m1$residuals)

# account for overlapping data point:
plot(jitter(x), y)
```



# 7. Sources

## 7.1. Cited

Duarte, N. (2008). _slide:ology: The art and science of creating great presentations._ Sebastopol, CA: O'Reilly Press.

## 7.2. References

- [Timdream's HTML5 wordcloud generator](https://timdream.org/wordcloud/)

## 7.3. Read

- UW IT - [Tableau Intro](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopIntroduction), [Tableau Fundamentals](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopFundamentals)
- [Tableau - Which chart?](https://drive.google.com/file/d/0B6XYyy1UbJ3XOVJxVTFJOURpVWc/view?usp=drive_web)
- [Tufte - Presenting data & information](https://www.edwardtufte.com/tufte/courses)
- [Coursera - Infographic Design](https://www.coursera.org/learn/infographic-design)
- [Data visualization as a first step . . . and also an intermediate step and a last step](http://andrewgelman.com/2009/05/25/data_visualizat_1/)
- [Old-school NYT death infographics were depressing](http://mentalfloss.com/article/61828/old-school-new-york-times-death-infographics-were-depressing)
- [3D dataviz taxonomy](http://www.datavizualization.com/blog/taxonomy-of-3d-dataviz)

## 7.4. Unread

- [Word clouds considered harmful](http://www.niemanlab.org/2011/10/word-clouds-considered-harmful/)
- [Tableau - Training videos](http://www.tableau.com/learn/training)
- [Lynda - Interactive Tableau Dashboards](https://www.lynda.com/Tableau-tutorials/Creating-Interactive-Dashboards-Tableau/417094-2.html)
- [Design a better dashboard](https://pages.sisense.com/dashboard-design-video.html) (Sisense workshop)
- [Design better data tables](https://medium.com/mission-log/design-better-data-tables-430a30a00d8c#.w1siia9bf)
- [Comparison among graph types](https://faculty.washington.edu/wijsman/GRAPHS3.pdf) (p. 24) [PDF]
- [DATA + DESIGN ebook](https://infoactive.co/data-design)
- [Youtube - Infographics & Data Visualization Course](https://www.youtube.com/watch?v=fZswD5RC1G8&list=PLa4VFIBUKrgLao-DalwedOCiq9RV6MPk9)
- [OpenLearn - Effective Ways of Displaying Information](http://www.open.edu/openlearn/science-maths-technology/computing-and-ict/information-and-communication-technologies/effective-ways-displaying-information/content-section-0)
- [Information Visualization MOOC](http://ivmooc.cns.iu.edu/index.html)
- _The Visual Display of Quantitative Information_
- _Visual Explanations_
- _Beautiful Evidence_
- _Envisioning Explanations_
- [DataCamp - ggvis, ggplot 1, ggplot 2, R Markdown](https://www.datacamp.com/courses/)
- [FlowingData - Tutorials](http://flowingdata.com/category/tutorials/) (mostly in R)
- [Tufte in R](http://motioninsocial.com/tufte/)
- [Data visualization: modern approaches](https://www.smashingmagazine.com/2007/08/data-visualization-modern-approaches/)
- [Data visualization and infographics](https://www.smashingmagazine.com/2008/01/monday-inspiration-data-visualization-and-infographics/)
