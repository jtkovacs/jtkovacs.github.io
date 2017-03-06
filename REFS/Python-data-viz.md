## USE & ANALYZE > Programming > Python data visualization

http://nbviewer.jupyter.org/github/plotly/python-user-guide/blob/master/Index.ipynb
http://nbviewer.jupyter.org/gist/darribas/4121857

 import matplotlib.pyplot as plt

convert to int: my_data = list(map(int, data_in)))

linecharts/plots:
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
x_axis_ticks = list(range(len(my_data)))
ax.plot(x_axis_ticks, my_data, linewidth=2)
ax.set_title(my_title)
ax.set_xlim([0, len(sample)])
ax.set_xlabel(‘Axis name’)
ax.set_ylabel(‘Axis name’)
fig.save_fig(my_filename)

table: see also tablib
from prettytable import PrettyTable
my_data_header = my_data[0]
x = PrettyTable(my_data_header)
x.add_row(my_data[1])

plot all bars as barchart
X = numpy.arange(len(my_data))
width = 0.25
plt.bar(X+width, prices, width)
plt.xlim(0, 5055)

plot buckets:
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
