
# What are Tufte's design principles?

Trust the eye as a tool that extracts patterns from complex data. Provide viewers with dense information in high-resolution; maximize information, minimize clutter.


# Data viz in Python

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


# Sources

## References

- [Timdream's HTML5 wordcloud generator](https://timdream.org/wordcloud/)

## Read

- UW IT - [Tableau Intro](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopIntroduction), [Tableau Fundamentals](http://itconnect.uw.edu/work/data/training/workshops/#TableauDesktopFundamentals)
- [Tableau - Which chart?](https://drive.google.com/file/d/0B6XYyy1UbJ3XOVJxVTFJOURpVWc/view?usp=drive_web)
- [Tufte - Presenting data & information](https://www.edwardtufte.com/tufte/courses)
- [Coursera - Infographic Design](https://www.coursera.org/learn/infographic-design)
- [Data visualization as a first step . . . and also an intermediate step and a last step](http://andrewgelman.com/2009/05/25/data_visualizat_1/)
- [Old-school NYT death infographics were depressing](http://mentalfloss.com/article/61828/old-school-new-york-times-death-infographics-were-depressing)
- [3D dataviz taxonomy](http://www.datavizualization.com/blog/taxonomy-of-3d-dataviz)

## Unread

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
