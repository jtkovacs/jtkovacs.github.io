<p class="path"><a href="../pkb.html">pkb contents</a> \> data viz | just under 711 words | updated 12/26/2017</p><div class="TOC">- &nbsp;1. [General principles](#general-principles)
	- &nbsp;1.1. [Edward Tufte](#edward-tufte)
- &nbsp;2. [Taxonomies of data visualizations](#taxonomies-of-data-visualizations)
- &nbsp;3. [Data visualization with ...](#data-visualization-with-...)
	- &nbsp;3.1. [Tableau](#tableau)
	- &nbsp;3.2. [Python](#python)
	- &nbsp;3.3. [R](#r)
- &nbsp;4. [Sources](#sources)
	- &nbsp;4.1. [Cited](#cited)
	- &nbsp;4.2. [References](#references)
	- &nbsp;4.3. [Read](#read)
	- &nbsp;4.4. [Unread](#unread)
</div>


# 1. General principles

See also [notes on graphic design.](https://jtkovacs.github.io/refs/graphics-viz.html)

## 1.1. Edward Tufte

Trust the eye as a tool that extracts patterns from complex data. Provide viewers with dense information in high-resolution; maximize information, minimize clutter.




# 2. Taxonomies of data visualizations

- Duarte (2008) has an interesting taxonomy
- [3D dataviz taxonomy](http://www.datavizualization.com/blog/taxonomy-of-3d-dataviz)
- [Tableau - Which chart?](https://drive.google.com/file/d/0B6XYyy1UbJ3XOVJxVTFJOURpVWc/view?usp=drive_web)
- [Comparison among graph types](https://faculty.washington.edu/wijsman/GRAPHS3.pdf) (p. 24) [PDF]

From Sharda et al. (2014, pp. 110-112):

- **Line chart AKA line graph:** "show relationship between two variables", "track changes or trends over time"
- **Scatter plot:** "explore the existence of trends, concentrations, and outliers" among 2 or 3 variables
    - **Bubble chart:** varying size of dots on scatterplot to add another variable
- **Pie chart:** show relative proportions IFF <4 categories
- **Bar chart:** "compare data across multiple categories"
    - Horizontal, vertical, stacked
    - **Histogram:** like a bar chart, but displays a frequency distribution
    - **Gantt chart:** "portray project timelines, project tasks/activity durations, and overlap amongst the tasks/activities"
    - **Bullet chart:** show progress towards a goal in the context of a bar chart
- **Geographic map**
- **PERT chart** AKA network diagram shows sequence of tasks in a complex project
- **Heat map:** "quickly see where the intersection of the categories is strongest and weakest"
    - **Highlight table** is a 2D heat map that displays numeric values in addition to color
- **Tree map:** "display hierarchical (tree-structured) data as a set of nested rectangles"

From Eckerson & Hammond (2011):

![](../ILLOS/viz-types.png)






# 3. Data visualization with ...

## 3.1. Tableau

- [Tableau - Training videos](http://www.tableau.com/learn/training)
- [Lynda - Interactive Tableau Dashboards](https://www.lynda.com/Tableau-tutorials/Creating-Interactive-Dashboards-Tableau/417094-2.html)

## 3.2. Python

- [http://nbviewer.jupyter.org/github/plotly/python-user-guide/blob/master/Index.ipynb](http://nbviewer.jupyter.org/github/plotly/python-user-guide/blob/master/Index.ipynb)
- [http://nbviewer.jupyter.org/gist/darribas/4121857](http://nbviewer.jupyter.org/gist/darribas/4121857)


```
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


## 3.3. R

- library for complex graphs: [http://ggplot2.org/](http://ggplot2.org/)

```
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






# 4. Sources

## 4.1. Cited

Eckerson, W., & Hammond, M. (2011). _Visual reporting and analysis._ TDWI Best Practices Report. TDWI, Chatsworth. Retrieved from [http://www.smartanalytics.com.au/pdf/Advizor-TDWI_VisualReportingandAnalysisReport.pdf](http://www.smartanalytics.com.au/pdf/Advizor-TDWI_VisualReportingandAnalysisReport.pdf)

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## 4.2. References

- [Timdream's HTML5 wordcloud generator](https://timdream.org/wordcloud/)

## 4.3. Read

- [UW IT - Tableau Intro](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopIntroduction), [Tableau Fundamentals](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopFundamentals)
- [Tufte - Presenting data & information](https://www.edwardtufte.com/tufte/courses)
- [Coursera - Infographic Design](https://www.coursera.org/learn/infographic-design)
- [Data visualization as a first step . . . and also an intermediate step and a last step](http://andrewgelman.com/2009/05/25/data_visualizat_1/)
- [Old-school NYT death infographics were depressing](http://mentalfloss.com/article/61828/old-school-new-york-times-death-infographics-were-depressing)

## 4.4. Unread

- [DATA + DESIGN ebook](https://infoactive.co/data-design)
- [Design better data tables](https://medium.com/mission-log/design-better-data-tables-430a30a00d8c#.w1siia9bf)
- [Word clouds considered harmful](http://www.niemanlab.org/2011/10/word-clouds-considered-harmful/)
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
