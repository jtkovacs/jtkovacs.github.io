<p class="path"><a href="../pkb.html">pkb contents</a> \> text analytics | just under 4044 words | updated 12/29/2017</p><div class="TOC">- &nbsp;1. [What is text analytics?](#what-is-text-analytics)
	- &nbsp;1.1. [Business applications of text analytics](#business-applications-of-text-analytics)
		- &nbsp;1.1.1. [Applications by technique](#applications-by-technique)
		- &nbsp;1.1.2. [Applications by industry](#applications-by-industry)
			- &nbsp;1.1.2.1. [Deception detection](#deception-detection)
- &nbsp;2. [Text analytics techniques](#text-analytics-techniques)
	- &nbsp;2.1. [Text mining](#text-mining)
		- &nbsp;2.1.1. [Establish the corpus](#establish-the-corpus)
		- &nbsp;2.1.2. [Process the corpus](#process-the-corpus)
		- &nbsp;2.1.3. [Analyze the data](#analyze-the-data)
			- &nbsp;2.1.3.1. [Clustering](#clustering)
			- &nbsp;2.1.3.2. [Association](#association)
			- &nbsp;2.1.3.3. [Classification](#classification)
			- &nbsp;2.1.3.4. [Trend analysis](#trend-analysis)
	- &nbsp;2.2. [Natural language processing](#natural-language-processing)
		- &nbsp;2.2.1. [Challenges with NLP](#challenges-with-nlp)
		- &nbsp;2.2.2. [Sentiment analysis](#sentiment-analysis)
			- &nbsp;2.2.2.1. [Generic sentiment analysis process](#generic-sentiment-analysis-process)
			- &nbsp;2.2.2.2. [Challenges with sentiment identification](#challenges-with-sentiment-identification)
			- &nbsp;2.2.2.3. [Methods for sentiment identification](#methods-for-sentiment-identification)
	- &nbsp;2.3. [Web mining](#web-mining)
		- &nbsp;2.3.1. [Challenges with web mining](#challenges-with-web-mining)
		- &nbsp;2.3.2. [Web crawlers (structure & content mining)](#web-crawlers-structure-content-mining)
		- &nbsp;2.3.3. [Web analytics (usage mining)](#web-analytics-usage-mining)
			- &nbsp;2.3.3.1. [Metrics for on-site web analytics](#metrics-for-on-site-web-analytics)
				- &nbsp;2.3.3.1.1. [Web site usability](#web-site-usability)
				- &nbsp;2.3.3.1.2. [Traffic sources](#traffic-sources)
				- &nbsp;2.3.3.1.3. [Visitor profiles](#visitor-profiles)
				- &nbsp;2.3.3.1.4. [Conversion statistics](#conversion-statistics)
			- &nbsp;2.3.3.2. [Technologies for web analytics](#technologies-for-web-analytics)
		- &nbsp;2.3.4. [Social analytics](#social-analytics)
			- &nbsp;2.3.4.1. [Social network analysis](#social-network-analysis)
				- &nbsp;2.3.4.1.1. [Types of networks](#types-of-networks)
				- &nbsp;2.3.4.1.2. [Network metrics](#network-metrics)
			- &nbsp;2.3.4.2. [Social media analytics](#social-media-analytics)
				- &nbsp;2.3.4.2.1. [What is social media?](#what-is-social-media)
				- &nbsp;2.3.4.2.2. [Tools for social media analytics](#tools-for-social-media-analytics)
- &nbsp;3. [Text analytics tools](#text-analytics-tools)
	- &nbsp;3.1. [IBM Watson](#ibm-watson)
	- &nbsp;3.2. [Attensity](#attensity)
	- &nbsp;3.3. [Python](#python)
		- &nbsp;3.3.1. [String manipulation](#string-manipulation)
		- &nbsp;3.3.2. [Regex](#regex)
- &nbsp;4. [Sources](#sources)
	- &nbsp;4.1. [Cited](#cited)
	- &nbsp;4.2. [References](#references)
	- &nbsp;4.3. [Read](#read)
	- &nbsp;4.4. [Unread](#unread)
</div>







# 1. What is text analytics?

Per Sharda et al. (2014, pp. 205-206), **text analytics** aims "to turn unstructured textual data into actionable information through the application of [techniques from] natural language processing (NLP) and analytics \[i.e., [data mining\]" ---](https://jtkovacs.github.io/refs/data-mining.html#what-is-data-mining) the latter taking a 'bag of words' approach and the former taking a much more sophisticated approach rooted in linguistics.

Text analytics includes the core activities of:

- **Information retrieval:** "searching and identifying relevant documents for a given set of key terms"; see [notes on search engines](https://jtkovacs.github.io/refs/search-engines.html) and [IA for information retrieval](https://jtkovacs.github.io/refs/information-architecture.html#what-is-information-retrieval)
- [Text mining](https://jtkovacs.github.io/refs/text-analytics.html#text-mining) AKA text data mining, AKA knowledge discovery in textual databases: "primarily focused on discovering new and useful relationships from the textual data sources"
    - **Information extraction:** "identification of key phrases and relationships within text by looking for predefined objects and sequences by way of pattern matching"
    - **Web mining**
        - Search engines (overlaps with "information retrieval")
        - Web analytics
        - Social media analytics
    - [Data mining](https://jtkovacs.github.io/refs/data-mining.html)

Text analytics is enabled by the foundational disciplines of:

- Statistics
- Computer Science
    - Artificial Intelligence
    - Machine Learning
- Linguistics
    - Natural Language Processing
- Management Science





## 1.1. Business applications of text analytics

### 1.1.1. Applications by technique

Per Sharda et al., some applications of text analytics (2014, pp. 206-207):

- **"Topic tracking.** Based on a user profile and documents that a user views, text mining can predict other documents of interest to the user.
- **Categorization.** Identifying the main themes of a document and them placing the document into a predefined set of categories based on those themes.
- **Clustering.** Grouping similar documents without having a predefined set of categories.
- **Concept-linking.** Connects related documents by identifying their shared concepts and, by doing so, helps users find information that they perhaps would not have found using traditional search methods."

... and some applications specifically enabled by NLP (pp. 213, 225; for a great example, see [Textio, The Augmented Writing Platform\):](https://textio.com/)

- **"Question-answering.** ... producing a human language answer when given a human language question. ...
- **Automatic summarization.** The creation of a shortened version of a textual document by a computer program that contains the most important parts of the original document.
- **Natural languge generation.** Systems convert information from computer databases into readable human language.
- **Natural language understanding.** Systems convert samples of human language into more formal representations that are easier for computer programs to manipulate.
- **Machine translation.** Automatic translation of one human language to another.
- **Foreign language reading.** A computer program that assists a nonnative language speaker to read [or write, or speak] a foreign language ...
- **Speech recognition.** ... Given a sound clip of a person speaking, the system produces a text dictation.
- **Text-to-speech.** Also called _speech synthesis,_ a computer program automatically converts normal language text into human speech.
- **Text proofing.** A computer program reads a proof copy of a text in order to detect and correct errors.
- **Optical character recognition.** The automatic translation of images of handwritten, typewritten, or printed text (usually captured by a scanner) into machine-editable textual documents"

... and some applications specifically enabled by sentiment analysis, part of NLP (p. 233):

- Incorporating 'buzz' into models of financial markets
- Understanding the 'voices' of employees (VOE), customers (VOC) and the market (VOM)
- Politics & surveillance

... and some applications specifically enabled by Web analytics (p. 250):

- "improve the effectiveness of e-commerce Web sites"
- "measure the results of traditional print or broadcast marketing campaigns" (impact on site traffic)


### 1.1.2. Applications by industry

Per Sharda et al. (2014, pp. 213-220):

- **Information management**
    - quarterly reports
    - manage search engines
    - manage websites
    - email
        - classify
        - filter junk
        - prioritize
        - generate automatic responses
- **Marketing**
    - *Data sources*
        - call centers (notes and transcriptions)
        - blogs
        - user reviews
        - discussion boards & comment sections
    - *Information sought*
        - customer perceptions in the market at-large
        - CRM system-based insights about churn, perceptions, purchasing behavior
        - improve customer service performance by providing granular feedback on writing (e.g. email to customers)
- **Legal**
    - court orders
    - patent files
- **Security**
    - ECHELON, "assumed to be capable of identifying the content of telephone calls, faxes, emails, and other types of data, intercepting information sent via satellites, publics-switched telephone networks, and microwave links"
    - FBI & CIA joint database development
    - [deception detection](#deception-detection)
- **Academic & biomedical**
    - citation analysis
    - research articles
    - medical records
    - molecular interactions

#### 1.1.2.1. Deception detection

Per Sharda et al. (2014, p. 216):

"Applying text mining to a large set of real-world criminal (person-of-interest) statements, Fuller et al. (2008) developed prediction models to differentiate deceptive statements from truthful ones. Using a rich set of cues extracted from the textual statements, the model predicted the holdout samples with 70 percent accuracy, which is believed to be a significant success considering that the cues are extracted only from textual statementss (no verbal or visual cues are present). Furthermore, compared to other deception-detection techniques, such as polygraph, this method is nonintrusive and widely applicable to not only textual data, but also (potentially) to transcriptions of voice recordings."

| Construct | Example Cues |
| --- | --- |
| Quantity | Verb count, noun-phrase count |
| Complexity | Average number of clauses, average sentence length |
| Uncertainty | Modifiers, modal verbs |
| Nonimmediacy | Passive voice, objectification |
| Expressivity | Emotiveness |
| Diversity | Lexical diversity, redundancy |
| Informality | Typographical error ratio |
| Specificity | Spatiotemporal information, perceptual information |
| Affect | Positive affect, negative affect |






































# 2. Text analytics techniques

## 2.1. Text mining

Per Sharda et al., text mining can be undertaken through the three-step process elaborated below (2014; I follow and mostly quote from pp. 220-226, but some term definitions are taken from pp. 206-207).

Delen and Crossland (2008, cited in Sharda et al., 2014) place the 'black box' of this data mining process into the following context, which they represent graphically:

- **Input**
    - structured data
    - unstructured data
- **Constraints**
    - software/hardware limitations
    - privacy issues
    - linguistic limitations
- **Mechanisms**
    - domain expertise
    - tools & techniques
- **Output**
    - context-specific knowledge

### 2.1.1. Establish the corpus

("large and structured set of texts ... prepared for the purpose of conducting knowledge discovery")

- **"Collect** all documents related to the context (domain of interest) being studied", which may include:
    - XML files
    - emails
    - web pages
    - notes
    - memos
    - transcriptions of audio

- **Organize** (often into a flat text file with consistent character encoding)

### 2.1.2. Process the corpus

**Count raw frequencies** in each document:

- **Tokenize** raw input (a token is "a categorized block of text in a sentence ... assignment of meaning to blocks of text is known as tokenizing")
- **Filter out** stop words **OR filter in** include terms
    - **stop words** "(or noise words) ... are filtered out prior to or after processing of natural language data ... there is no universally accepted list of stop words, [but] most natural language processing tools use a list that includes articles _(a, an, the, of, etc.),_ auxiliary verbs _(is, are, was, were, etc.),_ and context-specific words that are deemed not to have any differentiating value"
    - **include terms** AKA term dictionary
- **Reckon with linguistic ambiguities** e.g. typos, synonyms, etc.

**Perform stemming** to "[reduce] inflected words to their stem (or base or root) form"

**Normalize frequencies** (e.g., to account for different document lengths or to assign different weights to different documents; can use log frequencies, binary frequencies, inverse document frequencies, etc.; "text mining research and practice have clearly indicated that the best weighting may come from the use of _term-frequency_ divided by _inverse-document-frequency_ ... "; p. 245)

**Construct the term-by-document-matrix** AKA occurrence matrix (example below) --- a "common representation schema of the frequency-based relationship between the terms and documents in a tabular format where terms are listed in rows, documents are listed in columns, and the frequency between the terms and documents is listed in cells as integer values"

- **Latent semantic indexing** by single-value decomposition (SVD) "dimensionality reduction method to transform the term-by-document matrix to a manageable size by generating an intermediate representation of the frequencies using a matrix manipulation method similar to principal component analysis"; through SVD, "the analyst might identify the two or three most salient dimensions that account for most of the variability (differences) between the words and documents, thus identifying the latent semantic space that organizes the words and documents in the analysis. Once such dimensions are identified, the underlying 'meaning' of what is contained (discussed or described) in the documents has been extracted."

| | Term1 | Term2 | Term3 | Term4 | Term4 | Term5 |
| --- | --- | --- | --- | --- | --- | --- |
| Doc1 | 1 | | | 1 | | |
| Doc2 | | 1 | | | | |
| Doc3 | | | 3 | | 1 | |
| Doc4 | | 2 | 1 | | | 1 |


### 2.1.3. Analyze the data

See [notes on data mining.](https://jtkovacs.github.io/refs/data-mining.html)

#### 2.1.3.1. Clustering

Per Sharda et al. (2014, pp. 224-225), clustering is often used to **improve search recall** ("when a query matches a document its whole cluster is returned") and **precision** ("grouping the documents into a number of much smaller groups of related documents, ordering them by relevance, and returning only the documents from the most relevant group or groups"). The most common clustering methods:

- **Scatter/gather** "dynamically generates a table of contents for the collection and adapts and modifies it in response to the user selection"
- **Query-specific clustering** "a hierarchical clustering approach where the most relevant documents to the posed query appear in small tight clusters that are nested in larger clusters"

#### 2.1.3.2. Association

Sharda et al. (2014, pp. 225): "In text mining, associations specifically refer to the direct relationships between concepts (terms) or set of concepts ... [For _A_ ==> _C],_ confidence is the percentage of documents that include all the concepts in _C_ within the same subset of those documents that include all the concepts in _A._ Support is the percentage (or number) of documents that include all the concepts in _A_ and _C."_

#### 2.1.3.3. Classification

(AKA automatic text categorization, a form of prediction)

Per Sharda et al. (2014, pp. 224), some applications:

- indexing text (semi/automatic)
- filtering spam
- cataloging web pages
- generating metadata
- genre detection

#### 2.1.3.4. Trend analysis

Comparing the distribution of concepts across different subcollections, e.g. from the same source but at different points in time.












## 2.2. Natural language processing

With its two parent disciplines---artificial intelligence and computational linguistics---NLP extracts more meaning from textual data because it goes beyond the 'bag of words' approach to account for syntax, and, beyond that, "grammatical and semantic constraints as well as the context" (Sharda et al., 2014, p. 210).

### 2.2.1. Challenges with NLP

Per Sharda et al. (2014, p. 210), NLP faces major challenges:

- **part-of-speech tagging**
- **text segmentation** (identifying word boundaries in spoken language as well as written Chinese, Japanese, Thai, etc.)
- **word sense disambiguation** (see [notes on controlled vocabularies\)](https://jtkovacs.github.io/refs/information-architecture.html#what-are-controlled-vocabularies)
- **syntatic ambiguity** ("multiple possible sentence structures often need to be considered")
- **irregular input** (e.g. typos, accents)
- **identifying speech acts,** speech that is meant to provoke an action

### 2.2.2. Sentiment analysis

"Often we want to categorize text by topic, which may involve dealing with whole taxonomies of topics. Sentiment classification, on the other hand, usually deals with two classes (positive versus negative), a range of polarity (e.g., star ratings for movies), or even a range in strength of opinion" (Sharda et al., 2014, p. 229).

#### 2.2.2.1. Generic sentiment analysis process

Per Sharda et al. (2014, pp. 234-237):

- **Sentiment detection:** determine whether a given passage is 'sentimentful', perhaps by calculating its Objectivity-Subjectivity (O-S) polarity
- **N-P polarity classification:** "classify the opinion as falling under one of two opposing sentiment polarities, or locate its position on the continuum between these two polarities"
- **Target identification:** identify what---explicit or implicit in the sentence (or other unit of analysis)---the expressed sentiment is directed towards (its target)
    - the challenge posed by this step varies greatly by domain
    - can be multiple valid or invalid targets in a sentence
- **Collection and aggregation:** polarity is calculated at the word level, which can then be aggregated to the sentence/phrase and document levels through simple summing; weighted averaging; or "as complex as using one or more machine-learning techniques to create a predictive relationship between the words (and their polarity values) and phrases or sentences"

#### 2.2.2.2. Challenges with sentiment identification

Per Sharda et al. (2014):

- Sentiments can be explicit or implicit, "where the text implies an opinion"; the latter is much more difficult to detect
- "A document containing several opinionated statements would have a mixed polarity overall, which is different from not having a polarity at all"
- "an article may contain negative news without explictly using any subjective words or terms"

#### 2.2.2.3. Methods for sentiment identification

Per Sharda et al. (2014, pp. 236-237):

- **Lexicon**
    - [SentiWordNet](http://sentiwordnet.isti.cnr.it/)
    - [WordNet-Affect](http://wndomains.fbk.eu/wnaffect.html)
- **Training documents**
    - ***data*** "Product-review Web sites like Amazon, C-NET, eBay, RottenTomatoes, and the Internet Movie Database (IMDB) have all been extensively used as sources of annotated data. The star (or tomato, as it were) system provides an explicit label of the overall polarity of the review, and it is often taken as the gold standard in algorithm evaluation"
    - ***algorithms*** artificial neural networks, support vector machines, k-nearest neighbor, naive Bayes, decision trees, expectation maximization-based clustering










## 2.3. Web mining

Per Sharda et al. (2014, pp. 240-241), web mining, AKA web data mining, "is essentially the same as data mining that uses data generated over the web". They contrast two common terms, noting that Web analytics has a narrower meaning but is replacing its parent term in popular discussion:

| Web mining | Web analytics |
| --- | --- |
| "all [Web] data ... including transaction, social, and usage data" | "Web site usage data" |
| "discover previously unknown patterns and relationships" | "describe what happened on a website" |
| "predictive or prescriptive analytics methodology" | "predefined, metrics-driven descriptive analysis" |




### 2.3.1. Challenges with web mining

Per Sharda et al. (2014, p. 239) --- the Web is:

- Big, growing, and constantly updated
- Complex, e.g. authoring style, content variation, lack of unified structure, not specific to a domain




### 2.3.2. Web crawlers (structure & content mining)

Web content and metadata can be scraped and mined by web crawlers, to:

- reveal the **structure** of the Web, for example identifying **authoritative pages** and **hubs** on the basis of hyperlinks
- build a corpus of **content** for knowledge discovery through text mining.

See [notes on search engines](https://jtkovacs.github.io/refs/search-engines.html) for a discussion of how web crawlers are used there.




### 2.3.3. Web analytics (usage mining)

(AKA clickstream analysis)

Per Sharda et al. (2014, p. 251):

- Web analytics may be done on
    - data from one's own web properties **(on-site)** or
    - data from other sites **(off-site,** including: email, sales and lead history, social media data)
- On-site data can be in the form of
    - **server logs,** "where the Web server records file requests made by browsers", or
    - **page tagging,** "which uses JavaScript embedded in the site page code to make image requests to a thid-party analytics-dedicated server whenever a page is rendered by a Web browser (or when a mouse click occurs)"

#### 2.3.3.1. Metrics for on-site web analytics

Citing TWG (2013), Sharda et al. present their metrics in four categories (2014, pp.253-256):

##### 2.3.3.1.1. Web site usability

**How were they using my website?**

- page views, average page views per visitor
- time on site
- downloads
- click map (clicks within webpages)
- click paths (do you need to 'eduate' new visitors or 'motivate' returning ones?)

##### 2.3.3.1.2. Traffic sources

**Where did they come from?**

- referral web sites (where does your best traffic originate?)
- search engines (keywords, landing pages)
- direct hits (bookmarked and clicked, or typed the URL directly into the browser)
- online and offline marketing campaigns (create dedicated page to catch traffic originating from these sources, e.g. _www.mycompany.com/offer50)_

##### 2.3.3.1.3. Visitor profiles

**"What do my visitors look like?"** --- segmentation (and potentially, differentiation of landing pages) based on:

- keywords (do they echo yours, or find the site via their own?)
- content groupings ("analyze specific sections of your Web site that correspond with specific products, services, campaigns")
- geography
- time of day
    - when do people browse vs. buy?

##### 2.3.3.1.4. Conversion statistics

**"What does it all mean for the business?"**

- views
    - new visitors
    - returning visitors
- actions
    - leads
    - sales/purchases/submissions
- abandonment/exit and completion rates (\#page\_actions/\#page\_views)

#### 2.3.3.2. Technologies for web analytics

- Google Analytics




### 2.3.4. Social analytics

As defined by Gartner, social analytics is "monitoring, analyzing, measuring and interpreting digital interactions and relationships of people, topics, ideas and content" (qtd. in Sharda et al., 2014, p. 257).



#### 2.3.4.1. Social network analysis

Per Sharda et al. (2014):

- Mathematical graph theory, c. 1950s
- Network analysis, c. 1980s

##### 2.3.4.1.1. Types of networks

Per Sharda et al. (2014):

- Communication _(flow of information)_
- _(social relationships)_
    - Community
    - Criminal
- Innovation _(flow of ideas)_

##### 2.3.4.1.2. Network metrics

Per Sharda et al. (2014):

_CONNECTIONS_

- **Homophily** (to what extend friends are similar)
- **Multiplexity** (nodes connected in multiple ways, e.g. people connected through multiple social roles)
- **Mutuality/reciprocity** (of interactions)
- **Network closure** (to what extent friends are also friends, AKA **transivity)**
- **Propinquity** (to what extent friendship reflects geographical proximity)

_DISTRIBUTIONS_

- **Bridge** (node that single-handedly connects separate clusters)
    - **Structural holes** ("absence of ties between two parts of a network")
- **Centrality** (influence/importance of a node, calculated different ways --- _betweenness, closeness, eigenvector, alpha, and degree centrality)_
- **Density** ("proportion of direct ties in a network relative to the total number possible")
- **Distance** ("minimum number of ties required to connect two particular actors")
- **Tie strength** ("linear combination of time, emotional intensity, intimacy, and reciprocity ... **strong ties** are associated with homophily, intimacy, propinquity, and transitivity, while **weak ties** are associated with bridges)

_SEGMENTATION_

- **Cliques** versus **social circles** (lots of direct ties, versus looser circles; **clustering coefficient** higher for cliques)
- **Cohesion** ("minimum humber of members who, if removed from the group, would disconnect the group")


#### 2.3.4.2. Social media analytics

##### 2.3.4.2.1. What is social media?

Per Sharda et al. (2014, p. 261), **social media includes** "online magazine, Internet forums, Web logs, social blogs, microblogging, wikis, social networks, podcasts, pictures, video, and product/service evaluations/ratings"; they cite Kaplan and Haenlein's (2010) typology of social media based on theories from "media research (social presence, media richness) and social processes (self-presentation, self-disclosure):

- **collaborative projects,** e.g. Wikipedia
- **blogs and microblogs,** e.g. Tumblr
- **content communities,** e.g. YouTube
- **social networking sites,** e.g. Facebook
- **virtual game worlds,** e.g. World of Warcraft
- **virtual social worlds,** e.g. Second Life

Sharda et al. (2014, p. 262) summarize Morgan et al. (2010) regarding **differences between social and traditional media.** For social media,

- **Quality** is not always safeguarded with traditional editorial processes; it varies widely
- **Reach** can be similar, but traditional media scales via hierarchy and social media via network (i.e., virally)
- **Frequency** and **immediacy** can be higher for social media because it's "easier, faster, and cheaper", "resulting in fresher content"
- **Accessibility** (as readers) and **usability** (as authors) is higher for social media
- **Mutability** is clearly higher for digital content

Sharda et al. (2014, pp. 262-263) summarize Brogan and Bastone's (2011) stratification of **social media users** on the basis of time and intensity of use:

- Inactives
- Spectators
- Collectors
- Joiners
- Critics
- Creators

##### 2.3.4.2.2. Tools for social media analytics

- [https://blog.bufferapp.com/social-media-analytics-tools](https://blog.bufferapp.com/social-media-analytics-tools)
- [http://venturebeat.com/2013/12/20/top-10-social-media-analytics-tools-the-venturebeat-index/](http://venturebeat.com/2013/12/20/top-10-social-media-analytics-tools-the-venturebeat-index/)
- [http://www.entrepreneur.com/article/239029](http://www.entrepreneur.com/article/239029)
- [http://www.wordstream.com/home-a-may2015](http://www.wordstream.com/home-a-may2015)
- [https://keen.io/](https://keen.io/)
- kissmetrics























# 3. Text analytics tools

## 3.1. IBM Watson

IBM Watson's DeepQA is a "massively parallel, text mining-focused, probabilistic evidence-based computational architecture ... [using] more than 100 different techniques for analyzing natural language, identifying sources, finding and generating hypotheses, finding and scoring evidence, and merging and ranking hypotheses" (Sharda et al., 2014, pp. 203-204):

<img src="../illos/DeepQA.png" width="600">

## 3.2. Attensity

[https://en.wikipedia.org/wiki/Attensity](https://en.wikipedia.org/wiki/Attensity)

## 3.3. Python

```Python
# reverse order of elements:
list.reverse(), my_string[::-1]
# selectively replace:
str_name.replace(‘this’,’with this’)
# find index of known element:
list.index(‘str name’)
# times element occurs:
list.count(‘em_name’) makes tuple with (index,value): enumerate(my_list)
```

### 3.3.1. String manipulation

```
# remove punctuation
import string
line.translate(None, string.punctuation)

# modify case
my_string.lower()
my_string.upper()
my_string.capitalize()
my_string.title()

# remove whitespace by default, or remove specified characters
my_string.strip('chars')
my_string.lstrip()
my_string.rstrip()
```

### 3.3.2. Regex

```
# search for substrings within string or subset of string (i inclusive to j exclusive)
str_index = my_string.find(x,i,j)
str_index = my_string.index(x,i,j)  # raises ValueError if not found
str.endswith(x,i,j)
str.startswith(x,i,j)
my_string.count(x,i,j)
```

- https://docs.python.org/3/library/re.html
- https://docs.python.org/3/howto/regex.html
- http://nbviewer.jupyter.org/github/ptwobrussell/Mining-the-Social-Web-2nd-Edition/tree/master/ipynb/

```
# match the beginning of a string:
re.match(pattern, text, flags)
re.match(r’Jac’, data) # the r denotes a raw string

# search anywhere in a string:
# first match only:
re.search(pattern, text, flags)
# all nonoverlapping:
re.findall(pattern, text, flags)

# phone number, note escaped parentheses:
re.search(r’\(\d\d\d\) \d\d\d-\d\d\d\d’, data)
# make parentheses, space, hyphen optional in phone number
r’\)?\d{3})?\s?-?\d\{3}-\d{4}’
```

flags:

- re.IGNORECASE or re.I will ignore word case
- re.VERBOSE or re.X let regexp span lines & contain (ignored) whitespace or comments
- re.MULTILINE or re.M to make a pattern regard lines in your text as the beginning or end of a string
- multiple flags: re.findall(pattern, data, flag|flag|flag)

```
# store regex for reuse:
my_regex = re.compile(pattern, flags)
re.search(my_regex, data)
# OR
my_regex.search(data)

# loop to obtain iterable of match objects:
for match in my_regex.finditer(data):
    print(‘{first} {last} <{email}>’.format(**match.groupdict()))
```

- \\w = any Unicode word character,  \\W = anything not a Unicode word character
- \\s = any whitespace, \\S = anything not whitespace, \t = tab
- \\d = any number 0-9, \\D = any non-number
- \\b = word boundaries, \\B = not word boundaries

counts, for when something occurs multiple times:

- {3} = occurs 3 times, {,3} = 0-3 times, {3,} = 3 or more times, {3-5} = 3-5 times
- \\w? = 0-1 word characters, \\w* = 0-infinite word characters, \\w+ = 1-infinite word characters


sets let us combine explicit characters and escape patterns into pieces that can be repeated multiple time; they also let us specify pieces that should be left out of any matches:
[aple] finds apple and pale, [a-z] finds any lowercase letter, [A-Z] finds uppercase, [a-zA-Z] finds any case, [^2] finds anything not two, [0-9] finds any number, [\w.]+ finds any # of \w, .

```
# groups search for multiple conditions simultaneously; note that ^ marks the beginning of the string, and $ marks the end; unnamed groups returned as tuples, named groups as dicts:
my_var = re.findall (r’’’
    ^(?P<name>[-\w ]+,\s[-\w ]+)\t   # search for lastname, firstname
    (\)?\d{3})?\s?-?\d\{3}-\d{4})? # search for phone number, optional
    (?<email>[-\w\d.+]+ @[-\w\d.]+)\t$  # search for emails
    ‘’’, data, flags)

# groups addressing
my_var.groups()
my_var.group_dict()
my_var.group(‘group_name’)
my_var.group(1)
```




















# 4. Sources

## 4.1. Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## 4.2. References

- [WordNet:](https://wordnet.princeton.edu/) _WordNet® is a large lexical database of English. Nouns, verbs, adjectives and adverbs are grouped into sets of cognitive synonyms (synsets), each expressing a distinct concept. Synsets are interlinked by means of conceptual-semantic and lexical relations. The resulting network of meaningfully related words and concepts can be navigated with the browser. WordNet is also freely and publicly available for download. WordNet's structure makes it a useful tool for computational linguistics and natural language processing._
    - [SentiWordNet](http://sentiwordnet.isti.cnr.it/)
    - [WordNet-Affect](http://wndomains.fbk.eu/wnaffect.html)
- [Stanford NLP Lab software](https://stanfordnlp.github.io/CoreNLP/)
- [NLTK cheatsheet](http://billchambers.me/tutorials/2015/01/14/python-nlp-cheatsheet-nltk-scikit-learn.html)
- [Corpus of Contemporary American English](http://corpus.byu.edu/coca/)
- [Corpus based language studies](http://cw.routledge.com/textbooks/0415286239/default.asp)
- [IBM Watson demo - Infer personality from unstructured text](https://personality-insights-livedemo.mybluemix.net/)

## 4.3. Read

- [Lynda - Using Regex](http://www.lynda.com/Regular-Expressions-tutorials/Using-Regular-Expressions/85870-2.html)

## 4.4. Unread

- Regex: [1](http://www.regular-expressions.info/), [2](https://regexone.com/)
- [CodeSchool - Regular Expressions](https://www.codeschool.com/courses/breaking-the-ice-with-regular-expressions)
- [4 steps to structure highly unstructured big data via automated indexation](http://www.datasciencecentral.com/profiles/blogs/5-easy-steps-to-structure-highly-unstructured-big-data)
- [Coursera - Natural Language Processing](https://www.coursera.org/learn/nlp)
- [Big Data U - Text Analytics](http://bigdatauniversity.com/courses/text-analytics-essentials/)
- [Language bias &amp; black sheep](http://nlpers.blogspot.co.uk/2016/06/language-bias-and-black-sheep.html)
- [Analyzing Text with NLTK](http://www.nltk.org/book/)
- [Donovan Rebbechi's grep tutorial](http://www.panix.com/~elflord/unix/grep.html)
- [Drew's grep tutorial](http://www.uccs.edu/~ahitchco/grep/)
