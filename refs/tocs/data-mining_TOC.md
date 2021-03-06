<p class="path"><a href="../pkb.html">pkb contents</a> \> data mining | just under 3466 words | updated 12/28/2017</p><div class="TOC">- &nbsp;1. [What is data mining?](#what-is-data-mining)
	- &nbsp;1.1. [Business applications of data mining](#business-applications-of-data-mining)
		- &nbsp;1.1.1. [Applications by technique](#applications-by-technique)
		- &nbsp;1.1.2. [Applications by industry](#applications-by-industry)
	- &nbsp;1.2. [Doing data mining](#doing-data-mining)
		- &nbsp;1.2.1. [Data mining processes](#data-mining-processes)
		- &nbsp;1.2.2. [Common data mining pitfalls](#common-data-mining-pitfalls)
		- &nbsp;1.2.3. [Data mining software](#data-mining-software)
- &nbsp;2. [Data mining techniques](#data-mining-techniques)
	- &nbsp;2.1. [Clustering](#clustering)
		- &nbsp;2.1.1. [Clustering versus classification](#clustering-versus-classification)
		- &nbsp;2.1.2. [Generic clustering methodology](#generic-clustering-methodology)
		- &nbsp;2.1.3. [Clustering techniques](#clustering-techniques)
			- &nbsp;2.1.3.1. [k-means](#k-means)
	- &nbsp;2.2. [Association](#association)
		- &nbsp;2.2.1. [Generic association methodology](#generic-association-methodology)
		- &nbsp;2.2.2. [Evaluating associations](#evaluating-associations)
		- &nbsp;2.2.3. [Association techniques](#association-techniques)
			- &nbsp;2.2.3.1. [Apriori algorithm](#apriori-algorithm)
			- &nbsp;2.2.3.2. [Eclat](#eclat)
			- &nbsp;2.2.3.3. [FP-Growth](#fp-growth)
	- &nbsp;2.3. [Prediction](#prediction)
		- &nbsp;2.3.1. [Regression](#regression)
		- &nbsp;2.3.2. [Classification](#classification)
			- &nbsp;2.3.2.1. [Classification versus clustering](#classification-versus-clustering)
			- &nbsp;2.3.2.2. [Generic classification methodology](#generic-classification-methodology)
				- &nbsp;2.3.2.2.1. [Training approaches](#training-approaches)
			- &nbsp;2.3.2.3. [Evaluating classification models](#evaluating-classification-models)
				- &nbsp;2.3.2.3.1. [Measuring accuracy](#measuring-accuracy)
			- &nbsp;2.3.2.4. [Classification techniques](#classification-techniques)
				- &nbsp;2.3.2.4.1. [Decision tree analysis](#decision-tree-analysis)
				- &nbsp;2.3.2.4.2. [Statistical analysis](#statistical-analysis)
				- &nbsp;2.3.2.4.3. [Neural networks](#neural-networks)
				- &nbsp;2.3.2.4.4. [Case-based reasoning](#case-based-reasoning)
				- &nbsp;2.3.2.4.5. [Bayesian classifiers](#bayesian-classifiers)
				- &nbsp;2.3.2.4.6. [Genetic algorithms](#genetic-algorithms)
				- &nbsp;2.3.2.4.7. [Rough sets](#rough-sets)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>


# 1. What is data mining?

Per Sharda et al. (2014), the field of data mining draws on _statistics, artificial intelligence and machine learning_ to create data mining tools that facilitate the discovery of meaningful patterns in large BI datasets(see [notes on BI systems\).](https://jtkovacs.github.io/refs/bi.html) Adapted from Sharda et al. (2014, p. 157), there are three general patterns sought:

<table>
    <tr><th colspan=2>Data Mining Task</th><th>Learning Method</th><th>Popular Algorithms</th></tr>
    <tr><td colspan=2>**Prediction** (forecasting Y based on Xs)</td><td>Supervised</td><td>Classification and regression trees, ANN, SVM, genetic algorithms</td></tr>
    <tr><th></th><td>**Classification**</td><td>Supervised</td><td>Decision trees, ANN/MLP, SVM, rough sets, genetic algorithms</td></tr>
    <tr><th></th><td>**Regression**</td><td>Supervised</td><td>Linear/nonlinear regression, regression trees, ANN/MLP, SVM</td></tr>
    <tr><td colspan=2>**Association** (relationship between X and Y)</td><td>Unsupervised</td><td>Apriori, OneR, ZeroR, Eclat</td></tr>
    <tr><th></th><td>**Link analysis**</td><td>Unsupervised</td><td>Expectation maximization, apriori algorithm, graph-based matching</td></tr>
    <tr><th></th><td>**Sequence analysis**</td><td>Unsupervised</td><td>Apriori algorithm, FP-growth technique</td></tr>
    <tr><td colspan=2>**Clustering** (breaking X into logical groups)</td><td>Unsupervised</td><td>K-means, ANN/SOM</td></tr>
    <tr><th></th><td>**Outlier analysis**</td><td>Unsupervised</td><td>K-means, expectation maximization (EM)</td></tr>
</table>

See [notes on statistics](https://jtkovacs.github.io/refs/statistics.html) and [notes on machine learning.](https://jtkovacs.github.io/refs/machine-learning.html)


## 1.1. Business applications of data mining

### 1.1.1. Applications by technique

Per Sharda et al. (2014, pp. 172; 181; 183):

<table>
    <tr><th>Clustering</th>
    <td style="text-align:left;"><ul>
        <li>"identify a classification scheme (e.g., types of customers)"</li>
        <li>"suggest statistical models to describe populations"</li>
        <li>"indicate rules for assigning new cases to classes for identification, tagging, and diagnostic purposes"</li>
        <li>"provide measures of definition, size, and change in what were previously broad concepts"</li>
        <li>"find typical cases to label and represent classes"</li>
        <li>"decrease the size and complexity of the problem space for other data mining methods"</li>
        <li>"identify outliers in a specific domain (i.e., rare-event detection)"</li>
    </ul></td></tr>
    <tr><th>Association</th>
    <td style="text-align:left;"><ul>
        <li>"improve product placement on the sales floor [or magazine, or website] ... and [coordinate] promotional pricing of products"</li>
        <li>identify credit fraud based on purchase combinations</li>
        <li>"sequential patterns of services used by customers (checking account followed by savings account) can be used to identify other services they may be interested in (investment account)"</li>
        <li>"structure product bundles to maximize revenue"</li>
        <li>detect elevated medical risk as a combination of factors</li>
        <li>market segmentation</li>
        <li>"discover relationships between symptoms and illnesses, diagnosis and patient characteristics and treatments ... and genes and their functions"</li>
    </ul></td></tr>
    <tr><th>Prediction</th>
    <td style="text-align:left;"><ul>
        <li>credit approval</li>
        <li>store location</li>
        <li>target marketing</li>
        <li>fraud detection</li>
        <li>attrition</li>
    </ul></td></tr>
</table>

### 1.1.2. Applications by industry

Per Sharda et al. (2014, pp. 160-161):

- **GENERIC** (common across many domains)
    - customer profiling to identify most likely consumers for a given product, or most valuable customers to invest in
    - churn analysis, identifying roots of customer or employee attrition
    - identify and exploit seasonal trends
    - yield management: "optimally price services to maximize revenues as a function of time-varying transactions"
- **Customer relationship management** (CRM)
    - data comes from "product inquiries, sales, service requests, warranty calls, product reviews, social media connections", combined with "data on demographic and socioeconomic attributes"
- **Banking**
    - automate loan applications (lololol)
    - fraud detection
    - forecasting cash flows across entities
- **Retailing & logistics**
    - forecast demand, to
        - plan inventory levels
        - optimize logistics
    - market basket analysis to "improve the store layout and optimize sales promotions"
    - use RFID and sensory data to identify interesting product-specific insights
    - recommendations
- **Manufacturing & production**
    - RFID-enabled prediction of machinery failures, and "condition-based maintenance"
    - improve product quality
    - optimize manufacturing capacity
- **Brokerage & securities trading**
    - forecast prices
    - model impact of events on markets
    - detect & prevent fraud
- **Insurance**
    - "forecast claim amounts"
    - "determine optimal rate plans"
    - "identify and prevent incorrect claims payments and fraudulent activities"
- **Computer hardware & software**
    - predict hardware failures
    - filter span and Web content
    - identify software and network vulnerabilities
- **Government & defense**
    - model behavior of opponent/s
    - knowledge sharing
    - "predict resource consumption for better planning and budgeting"
- **Homeland security & law enforcement**
    - "identify patterns of terrorist behaviors"
    - "discover crime patterns (e.g., locations, timings, criminal behaviors, and other related attributes) to help solve criminal cases in a timely manner [???]"
    - "predict and eliminate potential biological and chemical attacks to the nation's critical infrastructure by analyzing special-purpose sensory data"
    - "identify and stop malicious attacks on critical information infrastructures"
- **Healthcare**
    - "identify people without health insurance and the factors underlying this undersired phenomenon"
    - "identify novel cost-benefit relationships between different treatments to develop more effective strategies"
- **Medicine**
    - "identify novel patterns to improve survivability of patients with cancer"
    - "predict success rates of organ transplantation patients to develop better donor-organ matching policies"
    - "identify the functions of different gene in the human chromosome (known as genomics)"
    - "discover the relationships between symptoms and illnesses to help medical professionals make informed and correct decisions"
- **Entertainment industry**
    - recommend/auto-play features
    - predict market reception of a movie, album, etc.
    - forecasting to inform scheduling



## 1.2. Doing data mining

### 1.2.1. Data mining processes

Per Sharda et al. (2014):

<table>
    <tr><th>CRISP-DM\*</th><th>SEMMA</th><th>KDD\*\*</th></tr>
    <tr><td>Business understanding</td><td>Sample: "generate a representative sample of the data"</td><td>Data selection</td></tr>
    <tr><td>Data understanding</td><td>Explore: "visualization and basic description of the data"</td><td>Data preprocessing</td></tr>
    <tr><td>Data preparation</td><td>Modify: "select variables, transform variable representations"</td><td>Data transformation</td></tr>
    <tr><td>Model building</td><td>Model: "use a variety of statistical and machine learning model"</td><td>Data mining </td></tr>
    <tr><td>Testing & evaluation</td><td rowspan=2>Assess: "evaluate the accuracy and usefulness of the models"</td><td rowspan=2>Interpretation/evaluation</td></tr>
    <tr><td>Deployment</td></tr>
</table>

\* Cross-Industry Standard Process for Data Mining, c. 1990s

\*\* Knowledge Discovery in Databases, c. 1996

### 1.2.2. Common data mining pitfalls

Per Sharda et al. (2014, p. 195):

- "Selecting the wrong problem for data mining.
- Ignoring what your sponsor thinks data mining is and what it really can and cannot do.
- Leaving insufficient time for data preparation. It takes more effort than is generally understood.
- Looking only at aggregated results and not at individual records ...
- Being sloppy about keeping track of the data mining procedure and results.
- Ignoring suspicious findings and quickly moving on.
- Running mining algorithms repeatedly and blindly ...
- Believing everything you are told about the data.
- Believing everything you are told about your own data mining analysis [????]
- Measuring your results differently from the way your sponsor measures them."

### 1.2.3. Data mining software

Per Sharda et al. (2014, p. 187), some commercial tools:

- IBM SPSS Modeler
- SAS Enterprise Miner
- Statistica
- Inteligent Miner
- PolyAnalyst
- CART, MARS, TreeNet, RandomForest (Saleford Systems)
- Insightful Miner
- XL Miner
- KXEN
- GhostMiner
- Microsoft SQL Server Data Mining
- Knowledge Miner
- Teradata Warehouse Miner
- Oracle Data Mining
- Fair Isaac Business Science
- DeltaMaster
- iData Analyzer
- Orange Data Mining Tool
- Zementis Predictive Analytics

Also, they cite a poll from KDNuggets.com (most to least popular):

- R
- Excel
- Rapid-I RapidMiner
- KNIME
- Weka/Pentaho
- StatSoft Statistica
- SAS
- Rapid-I RapidAnalytics
- MATLAB
- IMB SPSS Statistics
- IBM SPSS Modeler
- Orange
- Microsoft SQL Server
- Other free software
- TIBCO Spotfire/S+/Miner
- Tableau
- Oracle Data Miner
- Other commercial software
- ...




# 2. Data mining techniques





## 2.1. Clustering

"Cluster analysis is an exploratory data analysis tool for solving classification problems. The objective is to sort cases (e.g., people, things, events) into groups, or clusters, so that the degree of association is strong among members of the same cluster and weak among members of different clusters" (Sharda et al., 2014, pp. 180).

### 2.1.1. Clustering versus classification

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."

### 2.1.2. Generic clustering methodology

Clustering algorithms usually require the desired **number of clusters** to be set as a parameter. To estimate this parameter, there are several different approaches (Sharda et al., 2014, p. 181):

- "Look at the percentage of variance explained as a function of the number of clusters; that is, choose a number of clusters so that adding another cluster would not give much better modeling of the data"
- Set the number of clusters to (n/2)<sup>1/2</sup>, where n is the number of data points"
- "Use the Akaike information criterion (AIC), which is a measure of the goodness of fit (based on the concept of entropy) to determine the number of clusters"
- "Use Bayesian information criterion (BIC), which is a model-selection criterion (based on maximum likelihood estimation)"

"Most cluster analysis methods involve the use of a **distance measure** to calculate the closeness between pairs of items. Popular distance measures include Euclidean distance (the ordinary distance between two points that one would measure with a ruler) and Manhattan distance (also called rectilinear distance, or taxicab distance, between two points). ... Weighted averages may be used to establish these distances" (Sharda et al., 2014, 182).

### 2.1.3. Clustering techniques

Per Sharda et al. (2014, p. 181), algorithms may be classified by approach:

- (statistical) e.g. k-means, k-modes
    - (hierarchical)
    - (non--hierarchical)
- (neural networks)
    - with self-organizing map (SOM)
- (fuzzy logic) e.g. fuzzy c-means
- (genetic algorithms)

And also according to whether they are:

- **Divisive:** "all items start in one cluster and are broken apart"
- **Agglomerative:** "all items start in individual clusters, and the clusters are joined together"

#### 2.1.3.1. k-means

Per Sharda et al. (2014, p. 182):

- **"Initialization step:** Choose the number of clusters (i.e., the value of k).
- **Step 1:** Randomly generate k random points as initial cluster centers.
- **Step 2:** Assign each point to the nearest cluster center.
- **Step 3:** Recompute the new cluster centers.
- **Repetition step:** Repeat steps 2 and 3 until some convergence criterion is met (usually that the assignment of points to clusters becomes stable)."










## 2.2. Association

"In essence, association rule mining [AKA affinity analysis, AKA market-basket analysis] aims to find interesting relationships (affinities) between variables (items) in large databases" (Sharda et al., 2014, p. 183).

Association rules have the following terms and notation:

- antecedent ==> consequent [support, confidence]
- **X ==> Y [Supp(%), Conf(%)]**
- {Laptop Computer, Antivirus Software} ==> {Extended Service Plan} [30%, 70%]

### 2.2.1. Generic association methodology

"Several algorithms are available for discovering association rules ... [they] do only half the job, which is to identify the frequent itemsets in the database. Once the frequent itemsets are identified, they need to be converted into rules with antecedent and consequent parts ... [which is] a straightforward matching process, but the process may be time-consuming with large transaction databases.

Even though there may be many items in each section of the rule, in practice the consequent part usually contains a single item" (Sharda et al., 2014, p. 184).

### 2.2.2. Evaluating associations

- **Support** = _Supp(X==>Y)_ = (number of baskets containing X and Y) / (total number of baskets)
- **Confidence** = _Conf(X==>Y)_ = Supp(X==>Y)/Supp(X)
- **Lift** = _Lift(X==>Y)_ = Conf(X==>Y)/Expected Conf(X==>Y) = S(X==>Y)/S(X)*S(Y)

### 2.2.3. Association techniques

#### 2.2.3.1. Apriori algorithm

"Given a set of itemsets ... the algorithm attempts to find subsets that are common to at least a minimum number of items sets (i.e., complies with a minimum support). Apriori uses a bottom-up approach, where frequent subsets are extended one item at a time (a method known as _candidate generation ...), and groups of candidates at each level are tested agains the data for minimum support. The algorithm terminates when no further successful extensions are found" (Sharda et al., 2014, p. 185).

#### 2.2.3.2. Eclat

#### 2.2.3.3. FP-Growth








## 2.3. Prediction

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes. If what is being predicted is a class label (e.g., 'sunny, 'rainy', or 'cloudy') the prediction problem is called a classification, whereas if it is a numeric value (e.g., temperature such as 68°F), the prediction problem is called a regression".




### 2.3.1. Regression




### 2.3.2. Classification

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes."

#### 2.3.2.1. Classification versus clustering

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."

#### 2.3.2.2. Generic classification methodology

Per Sharda et al. (2014):

1. **Model development AKA training:** "a collection of input data, including the actual class labels, is used ... [and] the model is trained"
2. **Model testing:** "the model is tested against the holdout sample for accuracy assessment ..."
3. **Model deployment:** "... and eventually deployed for actual use"

##### 2.3.2.2.1. Training approaches

Per Sharda et al. (2014, pp. 174-175):

- **Simple split** AKA holdout AKA: two mutually-exclusive sets, typically 2/3 training data
    - "[If] the classifier is an artificial neural network ... the data is partitioned into three mutually exclusive subsets: training, validation, and testing ... to prevent over-fitting"
    - Partitioning can be random or stratified; in either case there is bias (if the classification variable isn't distributed normally), but less in the latter
- **k-fold cross-validation (CVA)** AKA rotation estimation: "the complete dataset is randomly split into k mutually exclusive datasets of approximately equal size. The classification model is trained and tested k times. Each time it is trained on all but one fold and then tested on the remaining single fold. The cross-validation estimate of the overall accuracy of a model is calculated by simply averaging the k individual accuracy measures."
- **Leave-one-out:** "similar to k-fold cross-validation where the k takes the value of 1; that is, every data point is used for testing once on as many models developed as there are number of data points. [???????] This is a time-consuming methodology, but sometimes for small data sets it is a viable option."
- **Bootstrapping:** "fixed number of instances from the original data are sampled (with replacement) for training and the rest of the data set is used for testing. This process is repeated as many times as desired."
- **Jackknifing:** "similar to the leave-one-out methodology ... accuracy is calculated by leaving one sample out at each iteration of the estimation process."

#### 2.3.2.3. Evaluating classification models

Per Sharda et al. (2014, pp. 172-173):

- **Predictive accuracy** (most common): "The model's ability to correctly predict the class label of new or previously unseen data"
- **Speed:** "The computational costs incolced in generating and using the model, where faster is deemed to be better"
- **Scalability:** "The ability to construct a prediction model efficiently given a rather large amount of data"
- **Interpretability:** "The level of understanding and insight provided by the model (e.g., how and/or what the model concludes on certain predictions)"

##### 2.3.2.3.1. Measuring accuracy

From Sharda et al. (2014, pp. 173-174), the universally-known **confusion matrix** (AKA classification matrix, AKA contingency table) for a two-class classification problem:

<table>
    <tr><th rowspan=2 colspan=2></th><th colspan=2>True Class</th></tr>
    <tr><th>Positive</th><th>Negative</th></tr>
    <tr><th rowspan=2>Predicted Class</th><th>Positive</th><td>True positive count (TP)</td><td>False positive count (FP)</td></tr>
    <tr><th>Negative</th><td>False negative count (FN)</td><td>True negative count (TN)</td></tr>
</table>

Common accuracy metrics:

| Formula | Description |
| --- | ------- |
| TRUE POSITIVE RATE = RECALL = TP/(TP+FN) | "The ratio of correctly classified positives divided by the sum of correctly classified positives and incorrectly classified negatives" |
| TRUE NEGATIVE RATE = TN/(TN+FP) | "The ratio of correctly classified negatives divided by the total negative count (i.e., false alarm rate)" i.e., the sum of correctly classified negatives and incorrectly classified positives" |
| ACCURACY = (TP+TN)/(TP+TN+FP+FN) | "The ratio of correctly classified instances (positives and negatives) divided by the total number of instances" |
| PRECISION = TP/(TP+FP) | "The ratio of correctly classified positives divided by the sum of correctly classified positives and incorrectly classified positives" |

"The **area under the ROC curve** is a graphical assessment technique where the true positive rate is plotted on the y-axis and the false positive rate is plotted on the x-axis. The area under the ROC curve determines the accuracy measure of a classifier: A value of 1 indicates a perfect classifier whereas 0.5 indicates no better than random chance" (Sharda et al., 2014, p. 175).

Accuracy metrics for classification problems with more than two classes:

- Per class accuracy rates: _True classification rate<sub>i</sub> =  (True classification)<sub>i</sub> / ∑<sub>i=1</sub><sup>n</sup> (False classification)<sub>i</sub>_
- _(Overall classifier accuracy)<sub>i</sub> = ∑<sub>i=1</sub><sup>n</sup> (True classification)<sub>i</sub> / Total number of cases_

#### 2.3.2.4. Classification techniques

##### 2.3.2.4.1. Decision tree analysis

Per Sharda et al. (2014, pp. 176-178):

"A tree consists of brances and nodes. A _branch_ represents the outcome of a test to classify ... A _leaf node_ at the end represents the final class choice ... The basic idea behind a decision tree is that it recursively divides a training set until each division consists entirely or primarily of examples from one class. Each non-leaf node of the tree contains a _split point,_ which is a test on one or more attributes and determines how the data are to be divided further. Decision tree algorithms, in general, build an initial tree from the training data such that each leaf node is pure ["i.e., contains members of the same class ... The basic idea is to ask questions whose answers provide the most information, similar to what we may do when playing the game 'Twenty Questions'"], and they then prune the tree to increase its generalization, and hence, the prediction accuracy on test data ...

1. Create a root node and assign all of the training data to it.
2. Select the _best_ splitting attribute.
3. Add a branch to the root node for each value of the split. Split the data into mutually exclusive (nonoverlapping) subsets along the lines of the specific splits and mode to the branches.
4. Repeat steps 2 and 3 for each and every leaf node until the stopping criteria is reached (e.g., the mode is dominated by a single class label).

Many algorithms have been proposed for creating decision trees. These algorithms differ primarily in terms of the way in which they determine the splitting attribute (and its split values), the order of splitting the attributes (splitting the same attribute only once or many times), the number of splits at each node (binary versus ternary), the stopping criteria, and the pruning of the tree (pre- versus postpruning)."

Common algorithms:

- From machine learning, **ID3, C4.5, C5**
- From statistics, **CART** (classification and regression trees)
- From pattern recognition, **CHAID** (chi-squared automatic interaction detector)

To evaluate splits, use the Gini index or information gain:

- gini(S) = 1 - ∑<sub>j=1</sub><sup>n</sup> p<sub>j</sub><sup>2</sup>
- _for S split into two subsets:_ gini<sub>split</sub>(S) = N<sub>2</sub>/N gini(S<sub>1</sub>) + N<sub>2</sub>/N gini(S<sub>2</sub>)

##### 2.3.2.4.2. Statistical analysis

Per Sharda et al. (2014), logistic regression and discriminant analysis are two techniques that were dominant until machine learning techniques were developed. They arhave fairly restrictive assumptions.

##### 2.3.2.4.3. Neural networks

Sharda et al. (2014, p. 176) call this "among the most popular" of classification techniques.

##### 2.3.2.4.4. Case-based reasoning

"This approach uses historical cases to recognize commonalities in order to assign a new case into the more probable category" (Sharda et al., 2014, p. 176).

##### 2.3.2.4.5. Bayesian classifiers

"This approach uses probability theory to build classification models based on the past occurrences that are capable of placing a new instance into a most probable class (or category)" (Sharda et al., 2014, p. 176).

##### 2.3.2.4.6. Genetic algorithms

"[Genetic algorithms are inspired by] natural evolution to build directed-search-based mechanisms to classify sample data" (Sharda et al., 2014, p. 176).

##### 2.3.2.4.7. Rough sets

"This method takes into account the partial membership of class labels into predefined categories in building models (collections of rules) for classification problems" (Sharda et al., 2014, p. 176).























# 3. Sources

## 3.1. Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## 3.2. References

## 3.3. Read

## 3.4. Unread
