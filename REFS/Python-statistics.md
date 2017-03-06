## USE & ANALYZE > Programming > Python statistics



numpy has an arrays datatype, essential for analytic operations. arrays are like lists, but you can perform elementwise calculations on them and, unlike lists, 
they are cannot contain multiple types within one array; they are type coercive. 
create an array: array_name = np.array(list_name)
np.array([list1],[list2])
np.column_stack((list1, list2))
subsetting arrays is the same as for lists, plus:
conditional selection: bmi[bmi>23]; 
access specific cell: array_name[row,col]

check dimensions: a_name.shape, a_name.size
calculate average: np.mean(list_name)
calculate median: np.median(list_name)
calculate st dev: np.std(list_name)
check correlation: np.corrcoef(list1,list2)
add: np.sum(list_name)
simulate random data: np.round(np.random.normal(mean, stdev, #obs), 2)

import random
random.choice(strname)
random.randint(a_inclusive,b_inclusive)
