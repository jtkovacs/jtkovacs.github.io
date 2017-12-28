<p class="path"><a href="../pkb.html">pkb contents</a> \> data mining | just under 1235 words | updated 12/28/2017</p><div class="TOC">- &nbsp;1. [What is data mining?](#what-is-data-mining)
	- &nbsp;1.1. [DM applications by technique](#dm-applications-by-technique)
	- &nbsp;1.2. [DM applications by industry](#dm-applications-by-industry)
	- &nbsp;1.3. [DM processes](#dm-processes)
	- &nbsp;1.4. [DM software](#dm-software)
	- &nbsp;1.5. [Common DM pitfalls](#common-dm-pitfalls)
- &nbsp;2. [Prediction](#prediction)
	- &nbsp;2.1. [Regression](#regression)
	- &nbsp;2.2. [Classification](#classification)
		- &nbsp;2.2.1. [Estimating the true accuracy of classification models](#estimating-the-true-accuracy-of-classification-models)
		- &nbsp;2.2.2. [Classification techniques](#classification-techniques)
	- &nbsp;2.3. [Association](#association)
		- &nbsp;2.3.1. [Support & confidence](#support-confidence)
		- &nbsp;2.3.2. [Apriori algorithm](#apriori-algorithm)
	- &nbsp;2.4. [Clustering](#clustering)
		- &nbsp;2.4.1. [Determining optimal # of clusters](#determining-optimal-#-of-clusters)
		- &nbsp;2.4.2. [Clustering techniques](#clustering-techniques)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unrea](#unrea)
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

## 1.1. DM applications by technique

Per Sharda et al. (2015, pp. 172; 181; 183):

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

## 1.2. DM applications by industry

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

## 1.3. DM processes

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

## 1.4. DM software

Per Sharda et al. (2015, p. 187), some commerical tools:

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

## 1.5. Common DM pitfalls

Per Sharda et al. (2015, p. 195):

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




# 2. Prediction

## 2.1. Regression

## 2.2. Classification

### 2.2.1. Estimating the true accuracy of classification models

per-class

overall

confusion matrix

metrics

Measuring accuracy

Estimation methods

- Simple split
- k-fold cross-validation
- leave-one-out
- bootstrapping
- jackknifing
- area under the ROC curve

### 2.2.2. Classification techniques

Decision tree analysis

Statistical analysis

Neural networks

Case-based reasoning

Bayesian classifiers

Genetic algorithms

Rough sets

## 2.3. Association

### 2.3.1. Support & confidence

### 2.3.2. Apriori algorithm

## 2.4. Clustering

### 2.4.1. Determining optimal # of clusters

### 2.4.2. Clustering techniques

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