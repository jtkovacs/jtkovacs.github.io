






# What is text analytics?

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





## Business applications of text analytics

### Applications by technique

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

- **Financial system,** trying to predict based on buzz
- Understanding the 'voices' of employees (VOE), customers (VOC) and the market (VOM)
- Politics & surveillance

### Applications by industry

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

#### Deception detection

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


















## Text mining process

Per Sharda et al., text mining can be undertaken through the three-step process elaborated below (2014; I follow and mostly quote from pp. 220-226, but some term definitions are taken from pp. 206-207).

Delen and Crossland (2008, cited in Sharda et al., 2014) place the 'black box' of this data mining process into the following context, which they represent graphically:

- **Input**
-   structured data
-   unstructured data
- **Constraints**
    - software/hardware limitations
    - privacy issues
    - linguistic limitations
- **Mechanisms**
    - domain expertise
    - tools & techniques
- **Output** context-specific knowledge

### Establish the corpus

("large and structured set of texts ... prepared for the purpose of conducting knowledge discovery")

- **"Collect** all documents related to the context (domain of interest) being studied", which may include:
    - XML files
    - emails
    - web pages
    - notes
    - memos
    - transcriptions of audio

- **Organize** (often into a flat text file with consistent character encoding)

### Create term-by-document matrix

- **Count raw frequencies** in each document:
    - **Filter out** stop words **OR filter in** include terms
        - **stop words** "(or noise words) ... are filtered out prior to or after processing of natural language data ... there is no universally accepted list of stop words, [but] most natural language processing tools use a list that includes articles _(a, an, the, of, etc.),_ auxiliary verbs _(is, are, was, were, etc.),_ and context-specific words that are deemed not to have any differentiating value"
        - **include terms** AKA term dictionary
    - **Perform stemming** to "[reduce] inflected words to their stem (or base or root) form"

- **Normalize frequencies** (e.g., to account for different document lengths or to assign different weights to different documents; can use log frequencies, binary frequencies, inverse document frequencies, etc.)

- Construct the **term-by-document-matrix** AKA occurrence matrix (example below) --- a "common representation schema of the frequency-based relationship between the terms and documents in a tabular format where terms are listed in rows, documents are listed in columns, and the frequency between the terms and documents is listed in cells as integer values"
    - **Latent semantic indexing** by single-value decomposition (SVD) "dimensionality reduction method to transform the term-by-document matrix to a manageable size by generating an intermediate representation of the frequencies using a matrix manipulation method similar to principal component analysis"; through SVD, "the analyst might identify the two or three most salient dimensions that account for most of the variability (differences) between the words and documents, thus identifying the latent semantic space that organizes the words and documents in the analysis. Once such dimensions are identified, the underlying 'meaning' of what is contained (discussed or described) in the documents has been extracted."

| | investment risk | project management | software engineering | development | SAP | ... |
| --- | --- | --- | --- | --- | --- | --- |
| Document 1 | 1 | | | 1 | | |
| Document 2 | | 1 | | | | |
| Document 3 | | | 3 | | 1 | |
| Document 4 | | 2 | 1 | | | 1 |


### Analyze

See [text analytics techniques.](#text-analytics-techniques)






















# Text analytics techniques



## Text mining

See [notes on data mining.](https://jtkovacs.github.io/refs/data-mining.html)

### Clustering

Per Sharda et al. (2014, pp. 224-225), clustering is often used to **improve search recall** ("when a query matches a document its whole cluster is returned") and **precision** ("grouping the documents into a number of much smaller groups of related documents, ordering them by relevance, and returning only the documents from the most relevant group or groups"). The most common clustering methods:

- **Scatter/gather** "dynamically generates a table of contents for the collection and adapts and modifies it in response to the user selection"
- **Query-specific clustering** "a hierarchical clustering approach where the most relevant documents to the posed query appear in small tight clusters that are nested in larger clusters"

### Association

Sharda et al. (2014, pp. 225): "In text mining, associations specifically refer to the direct relationships between concepts (terms) or set of concepts ... [For _A_ ==> _C],_ confidence is the percentage of documents that include all the concepts in _C_ within the same subset of those documents that include all the concepts in _A._ Support is the percentage (or number) of documents that include all the concepts in _A_ and _C."_

#### Trend analysis

Comparing the distribution of concepts across different subcollections, e.g. from the same source but at different points in time.

### Prediction

#### Classification (automatic text categorization)

Sharda et al. (2014, pp. 224):

- indexing text (semi/automatic)
- filtering spam
- cataloging web pages
- generating metadata
- genre detection





### Web mining

Challenges with web mining, per Sharda et al. (2014, p. 239) --- the Web is:

- Big, growing, and constantly updated
- Complex, e.g. authoring style, content variation, lack of unified structure, not specific to a domain

#### Search engines & SEO

See [notes on search engines.](https://jtkovacs.github.io/refs/search-engines.html)

(mining content, structure)




#### Web analytics

(mining usage)

- metrics
  - visitor profiles
  - traffic
  - usability
  - conversion
- technologies




#### Social analytics

- types of networks
- network metrics
  - connections
  - distributions
  - segmentation
- social media analytics
  - social media vs traditional media
  - types of social media users
  - measuring social media impact





## Natural language processing

vs. bag of words

challenges

- **Terms** and **polysemy** (elemental units; single word or multi-word phrase, see [notes on controlled vocabularies\)](https://jtkovacs.github.io/refs/information-architecture.html#what-are-controlled-vocabularies) and **Concepts** (combinations of terms)

### Sentiment analysis

- Process, pp. 234

- **Token** "a categorized block of text in a sentence ... this assignment of meaning to blocks of text is known as **tokenizing"**
    - **Part-of-speech tagging**

























# Text analytics tools

## IBM Watson

IBM Watson's DeepQA is a "massively parallel, text mining-focused, probabilistic evidence-based computational architecture ... [using] more than 100 different techniques for analyzing natural language, identifying sources, finding and generating hypotheses, finding and scoring evidence, and merging and ranking hypotheses" (Sharda et al., 2014, pp. 203-204):

<img src="../illos/DeepQA.png" width="600">





## Python

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

### String manipulation

```Python
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

### Regex

```Python
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

```Python
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

```Python
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

```Python
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




















# Sources

## Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## References

- [NLTK cheatsheet](http://billchambers.me/tutorials/2015/01/14/python-nlp-cheatsheet-nltk-scikit-learn.html)
- [Corpus of Contemporary American English](http://corpus.byu.edu/coca/)
- [Corpus based language studies](http://cw.routledge.com/textbooks/0415286239/default.asp)
- [IBM Watson demo - Infer personality from unstructured text](https://personality-insights-livedemo.mybluemix.net/)

## Read

- [Lynda - Using Regex](http://www.lynda.com/Regular-Expressions-tutorials/Using-Regular-Expressions/85870-2.html)

## Unread

- Regex: [1](http://www.regular-expressions.info/), [2](https://regexone.com/)
- [CodeSchool - Regular Expressions](https://www.codeschool.com/courses/breaking-the-ice-with-regular-expressions)
- [4 steps to structure highly unstructured big data via automated indexation](http://www.datasciencecentral.com/profiles/blogs/5-easy-steps-to-structure-highly-unstructured-big-data)
- [Coursera - Natural Language Processing](https://www.coursera.org/learn/nlp)
- [Big Data U - Text Analytics](http://bigdatauniversity.com/courses/text-analytics-essentials/)
- [Language bias &amp; black sheep](http://nlpers.blogspot.co.uk/2016/06/language-bias-and-black-sheep.html)
- [Analyzing Text with NLTK](http://www.nltk.org/book/)
- [Donovan Rebbechi's grep tutorial](http://www.panix.com/~elflord/unix/grep.html)
- [Drew's grep tutorial](http://www.uccs.edu/~ahitchco/grep/)
