

# What is data mining?

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


## Business applications of data mining

### Applications by technique

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

### Applications by industry

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



## Doing data mining

### Data mining processes

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

### Common data mining pitfalls

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

### Data mining software

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




# Data mining techniques

## Prediction

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes. If what is being predicted is a class label (e.g., 'sunny, 'rainy', or 'cloudy') the prediction problem is called a classification, whereas if it is a numeric value (e.g., temperature such as 68°F), the prediction problem is called a regression".

### Regression

### Classification

Per Sharda et al. (2014, p. 172), "classification learns patterns from past data (a set of information---traits, variables, features---on characteristics of the previously labeled items, objects, or events) in order to place new instances (with unknown labels) into their respective groups or classes."

#### Classification versus clustering

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."

#### Generic classification methodology

Per Sharda et al. (2014):

1. Model development AKA model training: "a collection of input data, including the actual class labels, is used ... [and] the model is trained"
2. Model testing / Model deployment: "the model is tested against the holdout sample for accuracy assessment and eventually deployed for actual use"

#### Evaluating classification models

Per Sharda et al. (2014, pp. 172-173):

- **Predictive accuracy** (most common): "The model's ability to correctly predict the class label of new or previously unseen data"
- **Speed:** "The computational costs incolced in generating and using the model, where faster is deemed to be better"
- **Scalability:** "The ability to construct a prediction model efficiently given a rather large amount of data"
- **Interpretability:** "The level of understanding and insight provided by the model (e.g., how and/or what the model concludes on certain predictions)"

##### Measuring accuracy

From Sharda et al. (2014, pp. 173-174), the universally-known **confusion matrix** (AKA classification matrix, AKA contingency table) for a two-class classification problem:

<table>
    <tr><th rowspan=2 colspan=2></th><th colspan=2>True Class</th></tr>
    <tr><th>Positive</th><th>Negative</th></tr>
    <tr><th rowspan=2>Predicted Class</th><th>Positive</th><td>True positive count (TP)</td><td>False positive count (FP)</td></tr>
    <tr><th>Negative</th><td>False negative count (FN)</td><td>True negative count (TN)</td></tr>
</table>

Common accuracy metrics:

| Formula | Description |
| --- | --- |
| True Positive Rate = TP/(TP+FN) | |
| True Negative Rate = TN/(TN+FP) | |
| Accuracy = (TP+TN)/(TP+TN+FP+FN) | |
| Recall = TP/(TP+FN) | |

Accuracy metrics for _n<sup>classes</sup>_ \> 2:

| Formula | Description |
| --- | --- |
| Per class accuracy rate | |
| Overall accuracy | |

##### Estimation methods

For estimating accuracy

- Simple split
- k-fold cross-validation
- leave-one-out
- bootstrapping
- jackknifing
- area under the ROC curve


#### Classification techniques

Decision tree analysis

Statistical analysis

Neural networks

Case-based reasoning

Bayesian classifiers

Genetic algorithms

Rough sets







## Association

### Support & confidence

### Apriori algorithm




## Clustering

#### Clustering versus classification

Per Sharda et al. (2014, p. 172), "Even though clustering ... can also be used to determine groups (or class memberships) of things, there is a significant difference between the two. Classification learns the function between the characteristics of things (i.e., [their] independent variables) and their membership (i.e., output variable) through a supervised learning process where both types (input and output) of variables are presented to the algorithm; in clustering, the membership of the objects is learned through an unsupervised learning process where only the input variables are presented to the algorithm. Unlike classification, clustering does not habe a supervising (or controlling) mechanism that enforces the learning process; instead, clustering algorithms use one or more heuristics (e.g., multidimensional distance measure) to discover natural groupings of objects."


### Determining optimal \# of clusters

### Clustering techniques

Divisive vs. agglomerative

Statistical (non/hierarchical) vs neural networks vs fuzzy logic vs genetic algorithms

Distance measures

k-means




# Sources

## Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## References

## Read

## Unread
