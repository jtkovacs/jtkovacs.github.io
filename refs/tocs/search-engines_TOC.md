<p class="path"><a href="../pkb.html">pkb contents</a> \> search engines | just under 958 words | updated 12/29/2017</p><div class="TOC">- &nbsp;1. [What are search engines?](#what-are-search-engines)
	- &nbsp;1.1. [Business applications of search engines](#business-applications-of-search-engines)
		- &nbsp;1.1.1. [Enterprise IR](#enterprise-ir)
		- &nbsp;1.1.2. [Marketing](#marketing)
			- &nbsp;1.1.2.1. [Search engine optimization (SEO)](#search-engine-optimization-seo)
				- &nbsp;1.1.2.1.1. [SEO tactics](#seo-tactics)
			- &nbsp;1.1.2.2. [Search Marketing (SEM)](#search-marketing-sem)
		- &nbsp;1.1.3. [Most popular search engines](#most-popular-search-engines)
	- &nbsp;1.2. [Ethical & social dimensions of search](#ethical-social-dimensions-of-search)
- &nbsp;2. [How do search engines work?](#how-do-search-engines-work)
	- &nbsp;2.1. [Search engine process](#search-engine-process)
		- &nbsp;2.1.1. [Development cycle](#development-cycle)
			- &nbsp;2.1.1.1. [Web crawler](#web-crawler)
			- &nbsp;2.1.1.2. [Document indexer](#document-indexer)
		- &nbsp;2.1.2. [Response cycle](#response-cycle)
			- &nbsp;2.1.2.1. [Query analyzer](#query-analyzer)
			- &nbsp;2.1.2.2. [Document matcher](#document-matcher)
			- &nbsp;2.1.2.3. [Postdelivery](#postdelivery)
	- &nbsp;2.2. [Measuring search engine performance](#measuring-search-engine-performance)
	- &nbsp;2.3. [Major search algorithms](#major-search-algorithms)
		- &nbsp;2.3.1. [Simple keyword search](#simple-keyword-search)
		- &nbsp;2.3.2. [PageRank](#pagerank)
		- &nbsp;2.3.3. [Hilltop](#hilltop)
		- &nbsp;2.3.4. [Topic-Sensitive](#topic-sensitive)
		- &nbsp;2.3.5. [Hyperlink-Induced Topic Search](#hyperlink-induced-topic-search)
		- &nbsp;2.3.6. [Panda](#panda)
		- &nbsp;2.3.7. [Penguin](#penguin)
		- &nbsp;2.3.8. [Hummingbird](#hummingbird)
		- &nbsp;2.3.9. [RankBrain](#rankbrain)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>


# 1. What are search engines?

"Technically, 'search engine' is the popular term for information retrieval systems. Although Web search engines are the most popular, search engines are often used in other than the Web, such as desktop search engines and document search engines ... perhaps a more appropriate name for them would have been _finding engines"_ (Sharda et al., 2014, p. 243).





## 1.1. Business applications of search engines

### 1.1.1. Enterprise IR




### 1.1.2. Marketing

#### 1.1.2.1. Search engine optimization (SEO)

Per Sharda et al. (2014, pp. 246-248), SEO is the "intentional activity of affecting the visibility of an e-commerce site or a Web site in a search engine's natural (unpaid or organic) search results ... As an Internet marketing strategy, SEO considers how search engines work, what people search for, the actual search terms or keywords typed into search engines, and which search engines are preferred by their targeted audience. Optimizing a Web site may involve editing its content, HTML, and associated coding to both increase its relevance to specific keywords and to remove barriers to the indexing activities of search engines. Promoting a site to increase the number of backlinks, or inbound links, is another SEO tactic."

##### 1.1.2.1.1. SEO tactics

- "Cross-linking between pages of the same Web site to provide more links to the most important pages"
- "URL normalization of Web pages so that they are accessible via multiple URLs and using canonical link elements and redirects"
- "Writing content that inclues frequently searched keyword phrases"
- "Updating content so as to keep search engines crawling back"
- "Adding relevant keywords to a Web page's metadata"



#### 1.1.2.2. Search Marketing (SEM)

Same as content marketing???

- http://okdork.com/2014/04/21/why-content-goes-viral-what-analyzing-100-millions-articles-taught-us/
- http://buzzsumo.com/
- https://blog.bufferapp.com/social-media-stats-studies
- http://time.com/12933/what-you-think-you-know-about-the-web-is-wrong/
- https://blog.bufferapp.com/perfect-blog-post-research-data
- https://moz.com/blog/the-generational-content-gap-three-ways-to-reach-multiple-generations



### 1.1.3. Most popular search engines

[Per EBizMBA,](http://www.ebizmba.com/articles/search-engines) based on 2017 traffic data from Alexa, Compete, and Quantcast, ordered most to least popular:

1. Google
2. Bing
3. Yahoo
4. Baidu
5. Ask
6. AOL Search
7. DuckDuckGo
8. WolframAlpha
9. Yandex
10. WebCrawler
11. Search
12. dogpile
13. ixquick
14. excite
15. Info





## 1.2. Ethical & social dimensions of search

- Information overload
- Privacy vs. personalization
- Political & cultural influences on search
- Social networks as IR tools
- Adversarial IR (spam)







# 2. How do search engines work?

In general, search engines work by crawling and [automatically indexing](information-architecture.html#cataloging-&-indexing) content, thus creating metadata. This index may be fairly shallow, e.g. based on contents of the <meta> tag or headers; it may also be quite deep, using natural language process (NLP) techniques like grammatical stemming. User search terms are then matched to the index.

In the early days, there was a strong distinction in techniques used between search engines and library catalogs. Increasingly, though, [KOSs from IA](information-architecture.html#koss-by-role-in-ir) --- which take advantage of human knowledge by formalizing it for use by an information system --- play a role in improving search engine performance.




## 2.1. Search engine process

Per Sharda et al. (2014, pp. 243-246), a search engine involves two simultaneous cycles: "[w]hile one is interfacing with the World Wide Web, the other is interfacing with the user."

<img src="../illos/search-engine.jpg" width="700">

### 2.1.1. Development cycle

#### 2.1.1.1. Web crawler

(AKA Web spider, spider)

"A Web crawler starts with a list of URLs to visit, which are listed in the schedule and are often called the _seeds._ These URLs may come from submissions made by Webmasters, or, more often, they come from the internal hyperlinks of previously crawled documents/pages. As the crawler visits these URLs, it identifies all the hyperlinks in the page and adds them to the list of URLs to visit. As the documents are found and fetched by the crawler, they are stored in a temporary staging area for the document indexer to grab and process."

#### 2.1.1.2. Document indexer

- **Pre-processing**
    - format conversions
    - separation of different content types
- **Parsing the documents**
    - with text mining/NLP/computational linguistics techniques
    - to [create the term-by-document matrix](text-analytics.html#create-term-by-document-matrix)

### 2.1.2. Response cycle

#### 2.1.2.1. Query analyzer

"[R]esponsible for receiving a search request from the user (via the search engine's Web server interface) and converting it into a standardized data structure, so that it can be easily queried/matched against the entries in the document database ... quite similar to what the document indexer does ..."

#### 2.1.2.2. Document matcher

Per some [search algorithm,](#major-search-algorithms)

- **Identify eligible results**
- Return results, **ranked by relevance**

#### 2.1.2.3. Postdelivery

"Leading search engines like Google monitor the performance of their search results by capturing, recording, and analyzing postdelivery user actions amd experiences. These analyses often lead to more and more rules to further refine the ranking of the documents/pages so that the links at the top are more preferable to the end users" (Sharda et al., 2014, p. 246).



## 2.2. Measuring search engine performance

Per Sharda et al. (2014):

- Effectiveness AKA quality of results
    -  Recall
    -  Precision
- Efficiency AKA speed




## 2.3. Major search algorithms

### 2.3.1. Simple keyword search

"[E]arly search engines used a simple keyword match against the document database and returned a list of ordered documents/pages, where the determinant of the order was a function that used the number of words/terms matched between the query and the document along with the weights of those words/terms" (Sharda et al., 2014, p. 246)

### 2.3.2. PageRank

- Developed by Google in 1997

### 2.3.3. Hilltop

### 2.3.4. Topic-Sensitive

### 2.3.5. Hyperlink-Induced Topic Search

(or Hypertext Induced Topic Selection??)

### 2.3.6. Panda

### 2.3.7. Penguin

### 2.3.8. Hummingbird

(semantic reasoning and query rewriting)

### 2.3.9. RankBrain

(machine learning)






















# 3. Sources

## 3.1. Cited

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## 3.2. References

## 3.3. Read

Hedden, H. (2016). _The accidental taxonomist_ (2e). Medford, NJ: Information Today, Inc.

## 3.4. Unread

- [Computational Advertising on Social Networks](http://www.datasciencecentral.com/profiles/blogs/computational-advertising-on-social-network)
- [SEO tutorial](http://www.afterhoursprogramming.com/tutorial/SEO/Introduction/)

