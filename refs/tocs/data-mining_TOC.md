<p class="path"><a href="../pkb.html">pkb contents</a> \> data mining | just under 2292 words | updated 12/28/2017</p><div class="TOC">- &nbsp;1. [What is data mining?](#what-is-data-mining)
	- &nbsp;1.1. [Business applications of data mining](#business-applications-of-data-mining)
		- &nbsp;1.1.1. [Applications by technique](#applications-by-technique)
		- &nbsp;1.1.2. [Applications by industry](#applications-by-industry)
	- &nbsp;1.2. [Doing data mining](#doing-data-mining)
		- &nbsp;1.2.1. [Data mining processes](#data-mining-processes)
		- &nbsp;1.2.2. [Common data mining pitfalls](#common-data-mining-pitfalls)
		- &nbsp;1.2.3. [Data mining software](#data-mining-software)
- &nbsp;2. [Data mining techniques](#data-mining-techniques)
	- &nbsp;2.1. [Prediction](#prediction)
		- &nbsp;2.1.1. [Regression](#regression)
		- &nbsp;2.1.2. [Classification](#classification)
			- &nbsp;2.1.2.1. [Classification versus clustering](#classification-versus-clustering)
			- &nbsp;2.1.2.2. [Generic classification methodology](#generic-classification-methodology)
				- &nbsp;2.1.2.2.1. [Training approaches](#training-approaches)
			- &nbsp;2.1.2.3. [Evaluating classification models](#evaluating-classification-models)
				- &nbsp;2.1.2.3.1. [Measuring accuracy](#measuring-accuracy)
			- &nbsp;2.1.2.4. [Classification techniques](#classification-techniques)
				- &nbsp;2.1.2.4.1. [Decision tree analysis](#decision-tree-analysis)
				- &nbsp;2.1.2.4.2. [Statistical analysis](#statistical-analysis)
				- &nbsp;2.1.2.4.3. [Neural networks](#neural-networks)
				- &nbsp;2.1.2.4.4. [Case-based reasoning](#case-based-reasoning)
				- &nbsp;2.1.2.4.5. [Bayesian classifiers](#bayesian-classifiers)
				- &nbsp;2.1.2.4.6. [Genetic algorithms](#genetic-algorithms)
				- &nbsp;2.1.2.4.7. [Rough sets](#rough-sets)
	- &nbsp;2.2. [Association](#association)
		- &nbsp;2.2.1. [Support & confidence](#support-confidence)
		- &nbsp;2.2.2. [Apriori algorithm](#apriori-algorithm)
	- &nbsp;2.3. [Clustering](#clustering)
		- &nbsp;2.3.1. [Clustering versus classification](#clustering-versus-classification)
		- &nbsp;2.3.2. [Determining optimal number of clusters](#determining-optimal-number-of-clusters)
		- &nbsp;2.3.3. [Clustering techniques](#clustering-techniques)
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
    <tr><td></td><td>**Classification**</td><td>Supervised</td><td>Decision trees, ANN/MLP, SVM, rough sets, genetic algorithms</td></tr>
    <tr><td></td><td>**Regression**</td><td>Supervised</td><td>Linear/nonlinear regression, regression trees, ANN/MLP, SVM</td></tr>
    <tr><td colspan=2>**Association** (relationship between X and Y)</td><td>Unsupervised</td><td>Apriori, OneR, ZeroR, Eclat</td></tr>
    <tr><td></td><td>**Link analysis**</td><td>Unsupervised</td><td>Expectation maximization, apriori algorithm, graph-based matching</td></tr>
    <tr><td></td><td>**Sequence analysis**</td><td>Unsupervised</td><td>Apriori algorithm, FP-growth technique</td></tr>
    <tr><td colspan=2>**Clustering** (breaking X into logical groups)</td><td>Unsupervised</td><td>K-means, ANN/SOM</td></tr>
    <tr><td></td><td>**Outlier analysis**</td><td>Unsupervised</td><td>K-means, expectation maximization (EM)</td></tr>
</table>

See [notes on statistics](https://jtkovacs.github.io/refs/statistics.html) and [notes on machine learning.](https://jtkovacs.github.io/refs/machine-learning.html)


## 1.1. Business applications of data mining

### 1.1.1. Applications by technique

Per Sharda et al. (2014, pp. 172; 181; 183):

<table>
    <tr><th>Clustering</th>
    <td style="text-align:left;"><ul>
        <li>"improve product placement on the sales floor ... and [coordinate] promotional pricing of products"</li>
        <li>identify credit fraud based on purchase combinations</li>
        <li>"sequentional patterns of services used by customers (checking account followed by savings account) can be used to identify other services they may be interested in (investment account)"</li>
        <li>"structure product bundles to maximize revenue"</li>
        <li>detect elevated medical risk as a combination of factors</li>
        <li>detect that "certain procedures at certain medical facilities can be tied to certain types of infection"</li>
    </ul></td></tr>
    <tr><th>Association</th>
    <td style="text-align:left;"><ul>
        <li>"identify a classification scheme (e.g., types of customers)"</li>
        <li>"suggest statistical models to describe populations"</li>
        <li>"indicate rules for assigning new cases to classes for identification, tagging, and diagnostic purposes"</li>
        <li>"provide measures of definition, size, and change in what were previously broad concepts"</li>
        <li>"find typical cases to label and represent classes"</li>
        <li>"decrease the size and complexity of the problem space for other data mining methods"</li>
        <li>"identify outliers in a specific domain (i.e., rare-event detection)"</li>
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

## 2.1. Prediction

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes. If what is being predicted is a class label (e.g., 'sunny, 'rainy', or 'cloudy') the prediction problem is called a classification, whereas if it is a numeric value (e.g., temperature such as 68°F), the prediction problem is called a regression".

### 2.1.1. Regression

### 2.1.2. Classification

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes."

#### 2.1.2.1. Classification versus clustering

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."

#### 2.1.2.2. Generic classification methodology

Per Sharda et al. (2014):

1. **Model development AKA training:** "a collection of input data, including the actual class labels, is used ... [and] the model is trained"
2. **Model testing:** "the model is tested against the holdout sample for accuracy assessment ..."
3. **Model deployment:** "... and eventually deployed for actual use"

##### 2.1.2.2.1. Training approaches

Per Sharda et al. (2014, pp. 174-175):

- **Simple split** AKA holdout AKA: two mutually-exclusive sets, typically 2/3 training data
    - "[If] the classifier is an artificial neural network ... the data is partitioned into three mutually exclusive subsets: training, validation, and testing ... to prevent over-fitting"
    - Partitioning can be random or stratified; in either case there is bias (if the classification variable isn't distributed normally), but less in the latter
- **k-fold cross-validation (CVA)** AKA rotation estimation: "the complete dataset is randomly split into k mutually exclusive datasets of approximately equal size. The classification model is trained and tested k times. Each time it is trained on all but one fold and then tested on the remaining single fold. The cross-validation estimate of the overall accuracy of a model is calculated by simply averaging the k individual accuracy measures."
- **Leave-one-out:** "similar to k-fold cross-validation where the k takes the value of 1; that is, every data point is used for testing once on as many models developed as there are number of data points. [???????] This is a time-consuming methodology, but sometimes for small data sets it is a viable option."
- **Bootstrapping:** "fixed number of instances from the original data are sampled (with replacement) for training and the rest of the data set is used for testing. This process is repeated as many times as desired."
- **Jackknifing:** "similar to the leave-one-out methodology ... accuracy is calculated by leaving one sample out at each iteration of the estimation process."

#### 2.1.2.3. Evaluating classification models

Per Sharda et al. (2014, pp. 172-173):

- **Predictive accuracy** (most common): "The model's ability to correctly predict the class label of new or previously unseen data"
- **Speed:** "The computational costs incolced in generating and using the model, where faster is deemed to be better"
- **Scalability:** "The ability to construct a prediction model efficiently given a rather large amount of data"
- **Interpretability:** "The level of understanding and insight provided by the model (e.g., how and/or what the model concludes on certain predictions)"

##### 2.1.2.3.1. Measuring accuracy

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


#### 2.1.2.4. Classification techniques

Per Sharda et al. (2014, pp. 175-176):

##### 2.1.2.4.1. Decision tree analysis

##### 2.1.2.4.2. Statistical analysis

##### 2.1.2.4.3. Neural networks

##### 2.1.2.4.4. Case-based reasoning

##### 2.1.2.4.5. Bayesian classifiers

##### 2.1.2.4.6. Genetic algorithms

##### 2.1.2.4.7. Rough sets







## 2.2. Association

### 2.2.1. Support & confidence

### 2.2.2. Apriori algorithm




## 2.3. Clustering

### 2.3.1. Clustering versus classification

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."


### 2.3.2. Determining optimal number of clusters

### 2.3.3. Clustering techniques

Divisive vs. agglomerative

Statistical (non/hierarchical) vs neural networks vs fuzzy logic vs genetic algorithms

Distance measures

k-means




# 3. Sources

## 3.1. Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## 3.2. References

## 3.3. Read

## 3.4. Unread
