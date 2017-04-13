<table id="TOC"><tr><td>- [What is information architecture?](#what-is-information-architecture?)
	- [Must information be organized?](#must-information-be-organized?)
- [What is taxonomy and vocabulary control?](#what-is-taxonomy-and-vocabulary-control?)
	- [Basic elements of controlled vocabularies](#basic-elements-of-controlled-vocabularies)
	- [What types of KOS exist?](#what-types-of-kos-exist?)
		- [KOS by function ](#kos-by-function-)
			- [(content object acquired by information system)](#(content-object-acquired-by-information-system))
			- [(content object retrieved from information system)](#(content-object-retrieved-from-information-system))
		- [KOS by structure](#kos-by-structure)
		- [KOS in the wild](#kos-in-the-wild)
- [Displaying KOS](#displaying-kos)
- [What activities comprise vocabulary control?](#what-activities-comprise-vocabulary-control?)
- [Sources](#sources)
</td></tr></table>
# What is information architecture?

Information architecture (IA) is one of several disciplines (e.g. library science, information science, taxonomy) that supports the search, browsing, and presentation of content objects (documents and metadata) within and across myriad different information systems (e.g. libraries, archives, repositories/portals, websites, databases). Another way of putting this (credit to Rosenfeld, Morville, and Arango, 2015) is that IA aims to facilitate both the finding and understanding of information. For search (the concern of back-end IA), the goal is information retrieval with good precision and good recall, which requires that content objects be described consistently, i.e. with a controlled vocabulary (CV). For browsing (the concern of front-end IA), the goal is intuitive user interfaces and navigational structures.

## Must information be organized?

Per Abrahamson & Freedman's _A perfect mess,_ order (like all things) has both benefit and cost. Even setting feasibility aside, it's probably never the case that 100% order is _optimal._ At the same time, because individuals' organization strategies and preferences vary so much, shared information spaces must (?) be organized according to intelligible principles that prospective users of the space can access and learn. 

Somewhat related, Heather Hedden (2016) offers this typology in which taxonomies may be (1) objective, with obvious empirical basis; (2) socially-negotiated, perhaps eventually becoming (3) culturally embedded; or (4) idiosyncratic:

![Objective, culturally embedded, socially negotiated, and idiosyncratic taxonomies](../ILLOS/taxonomy_status.png)

# What is taxonomy and vocabulary control?

Per Hedden, taxonomy --- the law or science (nomos) of order (taxis) --- has both general and specific meanings. 

In general, taxonomy is the discipline of creating and managing taxonomies, synonymous with knowledge organization structures/systems (KOS). The field has roots in biological taxonomies and library catalogs (which existed even in antiquity as scrolls). Companies began to use taxonomies for corporate knowledge asset management very marginally in the 1980s, then increasingly in the 1990s as web technologies spread. 

Beyond this general sense, a taxonomy is also a specific kind of KOS with a hierarchical structure:

<img src="../ILLOS/KSOs.png" width="550px">

Controlled vocabularies are very nearly synonymous with taxonomies. CVs stand in contrast with natural languages, which undermine information retrieval because they are fraught with polysemes (ambiguous words, both homographs/homophones and synonyms/near-synonyms/quasi-synonyms). Versus natural languages, CVs:

- Clearly define the SCOPE of terms using scope notes (SN) and history notes (HN);
- Provide some way of linking SYNONYMS, which increases recall; 
- Distinguish between HOMOGRAPHS, which increases precision; and, optionally,
- Capture SEMANTIC RELATIONSHIPS between terms, which improves both recall and precision.

## Basic elements of controlled vocabularies

CVs consist of terms and relationships. Terms are chosen if warrant exists; this warrant may take a while to develop, leading to the category of candidate terms AKA provisional terms. Warrants have different bases:

- User warrant emerges from user search terms and feedback;
- Literary warrant emerges from review of documents and standards; and
- Organizational warrant emerges from an organization's existing standards.

Minimally, terms and relationship indicators must account for synonyms and homographs. This means:

- A preferred term must be designated among synonyms, and synonyms must be linked. This is often accomplished via the indicators UF (use for) and U (use), e.g. Salinity UF Saltiness, Saltiness U Salinity. Preferred terms are also called descriptors or headings; non-preferred terms are also called entry terms or lead-in terms.
- Homographs must be disambiguated with a modifier AKA difference AKA qualifier term, e.g. Mercury (metal), Mercurcy (planet).

Relationships can be much more complex; see <a href="#KOS-by-structure">KOS by structure.</a> Terms may be compound, either bound (denoting a single concept) or consisting of a focus noun plus a qualifier (in the case of homographs). Focus nouns are also called head nouns. 
 
## What types of KOS exist?

### KOS by function 

#### (content object acquired by information system)
     
CATALOGING: cataloger describing content object with metadata including subject headings, so it can be found

representation and organization, fundamental actions

- Categorizing: "Categorization is the process of dividing the world into groups of enti-
ties whose members are in some way similar to each ... ment. By reducing the
load on memory and facilitating the efficient storage and retrieval of infor-
mation, categorization serves as the fundamental cognitive mechanism that
simplifies the individual’s experience of the environment" (Jacob, 2004, p. 518)

- Classifying: placing something into existing categories/classes 
"In LIS, the term “classification” is used to refer to three distinct but
related concepts: a system of classes, ordered according to a predetermined
set of principles and used to organize a set of entities; a group or class in a
classification system; and the process of assigning entities to classes in a
classification system" (Jacob, 2004, p.522)

    - Subject headings
        - subheadings
            - postcoordinated
            - precoordinated
    - Classification schemes
    - Hierarchical AKA nested taxonomies
    - Polyhierarchical taxonomy
    - Faceted taxonomies
    - Catalog

INDEXING: undexer saying what something is about in maximalist fashion, identifying what’s discussed and where it’s discussed; applying a controlled vocabulary, authority file; using an indexing language with indexing terms

- vs KEYWORDS: words that emerge as important from a content object
- vs TAGGING: saying what something is about in summary fashion, with keywords; also allows for grassroots view of what something’s about

#### (content object retrieved from information system)

REFERENCE WORKS:info consumer seeking item for consultation, not comprehensive reading

- Dictionary: 
    - A collection of words in one or more specific languages, often arranged alphabetically, which may include information on definitions, usage, etymologies, phonetics, pronunciations, translation, etc.
    - A book of words in one language with their equivalents in another, sometimes known as a lexicon.
- Lexicon: The ‘catalog’ of a language’s words, which together with a ‘grammar’ constitutes the language.
- Thesaurus:
- Encyclopedia: A type of reference work or compendium holding a comprehensive summary of information from either all branches of knowledge or a particular branch of knowledge.
- Bibliography:
- Catalog:
- Gazetteer: A gazetteer is a geographical dictionary or directory used in conjunction with a map or atlas. They typically contain information concerning the geographical makeup, social statistics and physical features of a country, region, or continent.
- Directory: A listing of information for location/navigation; e.g. business direcfory, telephone directory, web directory
- Almanacs
- Catalogs 

NAVIGATION: 

- with hierarchical taxonomies
- with a pick list
- faceted taxonomies

RETRIEVAL: 

- faceted taxonomies and thesauri
- p. 19 of ANSI/NISO Z39.19 

### KOS by structure

In order of increasing complexity (number, kind, and configuration of relationships):

- Term lists: [which may have "See" or "Use" to steer people towards preferred language, or use a "synonym ring/synset" approach of no preferred term among multiple])
    - Authority file: What’s the definitive version of a term, at least one variant of which I know?
    - Glossary (vocabulary, clavis, specialized dictionary): An alphabetical list of terms with definitions inside a particular domain of knowledge.
    - Dictionary
    - Gazetteer
    - Significant overlap w/ reference works
- Synonym ring/synset
    - Usually invisible to user, e.g. underpinning a search engine
- category
- Taxonomy AKA hierarchy AKA tree structure: 
    - top-down
    - Broader term (BT)
    - Broader term (generic) (BTG)
    - Broader term (instance) (BTI)
    - Broader term (partitive) (BTP)    
    - Narrower term (NT)
    - Narrower term (generic) (NTG)
    - Narrower term (instance) (NTI)
    - Narrower term (partitive) (NTP)
    - sibling
    - generic posting
    - up-posting/autoposting
    - top term (TT)
    - node label
- Faceted taxonomies: 
    - bottom-up
    - multiple views of same info, based on attributes
    - usually used for navigation
    - CVs may be presented by facets
    - facets may be/use CVs
- Polyhierarchy
- Thesaurus: captures more relationships than synonyms; [good for representing a very large controlled vocabulary]
    - related term/associative relationship (RT)
    - equivalence relationship (UF/U)
    - hierarchical relationship (BT/NT)
    - cross-reference
    - reciprocity
    - a/symmetric relationship
- Semantic networks: not CV; not 100% ontology
- Ontology
    - Tom Gruber: "An ontology defines a set of representational primitives with which to model a domain of knowledge or discourse ... ontology can be viewed as a level of abstraction of data models, analogous to hierarchical and relational models." In other words, there are Three Big Data Models: hierarchical, relational, and ontological/atomic"
    - Expressed om RDF, OWL, topic maps
    - defined by
        - ontological ambition
        - semantic relationships (annotated edges)
        - graph model
        - structured attributes
        - entities are instances of classes

### KOS in the wild

You would see KOS in these places, in these forms:

- hierarchical or faceted navigation taxonomies
- pick list (dropdown for website, database)
- a synset behind a search engine
- metadata
- ... 

# Displaying KOS

- generic structure
- permuted display 
- classified display
- flat format

# What activities comprise vocabulary control?

- Construction
- Testing
- Maintenance

... within a CV management system.

# Sources

- [ANSI/NISO Z39.19-2005, Guidelines for the construction, management, and format of monolingual controlled vocabularies](http://www.niso.org/apps/group_public/download.php/12591/z39-19-2005r2010.pdf)
- [NISO-TR02-1997, Guidelines for indexes and related information retrieval devices](http://www.niso.org/publications/tr/tr02.pdf)
- [Jacob, E. K. (2004). Classification and categorization: a difference that makes a difference. _Library Trends,_ 52(3), 515.](https://pdfs.semanticscholar.org/774e/ab27b22aa92dfaa9aeeeafbe845058e85f58.pdf)
- [The new information architecture](https://www.youtube.com/watch?v=Fou5J7j5uzk) [video]
- Abrahamson, E. & Freedman, D. H. (2008). _A perfect mess: The hidden benefits of disorder --- How crammed closets, cluttered offices, and on-the-fly planning make the world a better place._ New York City, NY: Back Bay Books.
- Hedden, H. (2016). _The accidental taxonomist_ (2e). Medford, NJ: Information Today, Inc.
- Rosenfeld, L., Morville, P., & Arango, J. (2015). _Information architecture for the web and beyond_ (4e). Sebastopol, California: O'Reilly Media.
- [RSW - Give yourself permission to follow your nose](https://www.youtube.com/watch?v=SDm1zXxpkr8) [video]
- [Richard Saul Wurman: the reluctant genius](http://www.wearesalt.org/richard-saul-wurman-the-reluctant-genius/)
- Wurman, R. S. _Information anxiety._
- Wurman, R. S. _Information architects._
- [Information architecture](https://www.ischool.utexas.edu/~l38613dw/readings/InfoArchitecture.html)
- [IA tutorial](http://www.afterhoursprogramming.com/tutorial/Information-Architecture/Overview/)