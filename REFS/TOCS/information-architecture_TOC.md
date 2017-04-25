<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/information-architecture.html">https://jtkovacs.github.io/REFS/HTML/information-architecture.html</a></p><table class="TOC"><tr><td>- [What is information retrieval?](#what-is-information-retrieval?)
	- [Cataloging & indexing](#cataloging-&-indexing)
	- [Searching, browsing, & navigating](#searching,-browsing,-&-navigating)
- [What is information architecture?](#what-is-information-architecture?)
	- [Must information be organized?](#must-information-be-organized?)
		- [Anatomy of mess](#anatomy-of-mess)
		- [Bases of organization](#bases-of-organization)
	- [What ways can things be organized?](#what-ways-can-things-be-organized?)
		- [Information schemas](#information-schemas)
		- [Information structures](#information-structures)
	- [What major questions arise in organizing?](#what-major-questions-arise-in-organizing?)
- [What is taxonomy?](#what-is-taxonomy?)
	- [What are knowledge organization structures?](#what-are-knowledge-organization-structures?)
		- [KOSs by structure](#koss-by-structure)
		- [KOSs by role in IR](#koss-by-role-in-ir)
	- [What are reference works?](#what-are-reference-works?)
	- [What are controlled vocabularies?](#what-are-controlled-vocabularies?)
		- [Relationship between CVs and metadata](#relationship-between-cvs-and-metadata)
		- [Constructing CVs](#constructing-cvs)
			- [Choosing terms](#choosing-terms)
			- [Constructing terms](#constructing-terms)
				- [Scoping terms](#scoping-terms)
				- [Which term is preferred?](#which-term-is-preferred?)
				- [Grammar guidelines for terms](#grammar-guidelines-for-terms)
			- [Specifying relationships](#specifying-relationships)
			- [CV elements by impact on IR](#cv-elements-by-impact-on-ir)
		- [Testing CVs](#testing-cvs)
		- [Maintaining CVs](#maintaining-cvs)
		- [Managing CVs](#managing-cvs)
	- [Displaying KOSs & CVs](#displaying-koss-&-cvs)
	- [Interoperability](#interoperability)
- [Sources](#sources)
</td></tr></table>


# What is information retrieval?

IR occurs when a user retrieves information objects AKA content objects (documents and metadata) from an information retrieval system (e.g. libraries, archives, repositories/portals, websites, databases). [IR requires IA.](#what-is-information-architecture?)

## Cataloging & indexing

Information professionals work to ensure that IR (1) has good **precision;** (2) has **good recall;** and (3) is [possible across multiple IR systems.](#interoperability) They do this by (1) [creating search algorithms](search-engines.html) or by (2) ingesting information objects into a catalog, which includes:

- **CATALOGING** the object, i.e. describing/representing an information object with metadata, including subject headings and subheadings. Subject headings and subheadings can be combined from the beginning (precoordination) or combined by users while searching (postcoordination)

    - Assigning subject headings (called "subject cataloging") entails **CLASSIFYING** objects. "In LIS, the term 'classification' is used to refer to three distinct but related concepts: a system of classes, ordered according to a predetermined set of principles and used to organize a set of entities; a group or class in a classification system; and the process of assigning entities to classes in a classification system" (Jacob, 2004, p.522). 
    - The first sense of classification given here (constructing classes) may also be called **CATEGORIZATION,** although categories are perhaps less strict than classes. "Categorization is the process of dividing the world into groups of entities whose members are in some way similar to each ... By reducing the load on memory and facilitating the efficient storage and retrieval of information, categorization serves as the fundamental cognitive mechanism that simplifies the individual’s experience of the environment" (Jacob, 2004, p. 518).
    
- **INDEXING** the object, i.e. mapping out the contents of an information object, perhaps using terms from a CV (at minimum, for named entities, an authority file should be consulted). 

    - Although **TAGGING** or keywording is occasionally used as a synonym for indexing, it is more often used to denote the opposite of indexing, in which keywords emerge from an information itself rather than from an indexing language. This allows for a grassroots view of what something is about.
    
    - Indexing may be performed by machines when it is **necessary** (there are many documents; content changes quickly; speed matters) or when it is **suitable** (documents are inherently structured; documents fall within a small domain; documents are only text).
        - Automatic indexing with a CV (AKA auto-tagging, -classification, -categorization) may be rules-based (e.g., using regex) or machine learning-based (Bayesian, support vector machines, neural networks). Regardless, performance is better with pre-coordinated terms. 
        - Automatic indexing that doesn't use a CV is called information extraction, which includes**entity extraction** AKA entity recognition, entity identification.
<br/><br/>
    - Indexing may be performed by humans (professionals or social media users) when it is **necessary** (accuracy matters more than speed; must index nontext objects; content lacks inherent structure; content varies greatly) or **feasible** (few documents). 
        - Human professional indexing consists of 
            - analyzing content; 
            - assigning terms; and possibly 
            - assigning relevancy scores/weights to the terms.
        - Human social indexing produced a **folksonomy,** different from the anthropological term "folk taxonomy" that describes informal categorization schemes.
    
<table style="padding-left: 90px;">
<tr><th></th><th></th>
<th colspan="3">INDEXING AGENT</th></tr>

<tr><th></th><th></th>
<th>Taxonomist</th>
<th>Users</th>
<th>Machine</th></tr>

<tr><th rowspan="2">TAXONOMY</th>
<th>Yes</th>
<td>Closed</td>
<td>n/a</td>
<td>Auto-Tagging, Auto-Classification, Auto-Categorization</td></tr>

<tr><th>No</th>
<td>Open</td>
<td>Tagging</td>
<td>Information Extraction</td></tr>
</table>




## Searching, browsing, & navigating
    
To retrieve information, users engage with information systems by:

- **SEARCHING** for a specific piece of information; this is the concern of back-end IA. Simultaneous search of multiple information systems is called metasearching, broadcast searching, cross-database searching, federated searching, and parallel searching.
    
- **BROWSING** a collection of information; this is the concern of front-end IA, with the goal of intuitive user interfaces and navigational structures. Browsing is "quick examination of the relevance of a number of objects which may or may not lead to a closer examination or acquisition/selection of (some of) these objects" Hjørland (2011); "visually scanning through organized collections of representations of content objects" (ANSI/NISO Z39.19-2005, p. 157). 

    - **NAVIGATION** is related, but has implications of (1) traversing a website (2) via "pre-established links or relationships" (ANSI/NISO Z39.19-2005, p. 162).


    
    
# What is information architecture?

Rosenfeld, Morville, and Arango (2015) say that IA aims to facilitate both the finding and understanding of information. The "finding" dimension of IA is information retrieval, the legacy of library science; the "understanding" dimension comes via Richard Saul Wurman, who focused on making complex systems intelligible through visualization. 

## Must information be organized?

Per Abrahamson and Freedman (2008), order (like all things) has both benefit and cost. Even setting feasibility aside, it's probably never the case that 100% order is _optimal._ At the same time, because individuals' organization strategies and preferences vary so much, shared information spaces must (?) be organized according to intelligible principles that prospective users of the space can access and learn.

### Anatomy of mess

Per Abrahamson and Freedman (2008):

<img src="../ILLOS/mess.jpg" width="600px">

### Bases of organization

Heather Hedden (2016) offers this typology in which taxonomies (i.e., knowledge organization structures) have different bases/origins. KOSs may be (1) objective, with obvious empirical basis; (2) socially-negotiated, perhaps eventually becoming (3) culturally embedded; or (4) idiosyncratic:

![](../ILLOS/taxonomy_status.png)
    
## What ways can things be organized?

Schemas and structures work together. For example, my Zotero library is a hierarchy (structure) of topical categories (schema), automatically sorted by alphabet (schema).
The distinction I draw is that "schemas" are for the conceptual (abstract, disembodied) organization of information into groups, whereas "structures" describe group configuration. 

### Information schemas

Wurman (1990) claims there are only five ways to organize items. Similarly, Wyllys (2000) states that information can be organized according to different schemas that encompass Wurman's five ways (italicized):

- **Exact schemas** (mutually exclusive, AKA classes): _alphabet, location, chronology, continuum_
- **Inexact schemas,** AKA _categories:_ topical, task-oriented, audience-specific, metaphor-driver (e.g., information lifecycle)
- **Hybrid schemas,** combining multiple methods (may be confusing)

### Information structures

But, Wyllys adds, there are also three fundamental information structures, AKA **data models.** In their review of database history (gens 1-3), Connolly and Begg (2015) classify Wyllys' three structures as "record-based", and add "object-oriented" as another top-level category:

- **Record-based structures** can’t express constraints on the data, but express structure well

    - **(1G) Hierarchical structures** 
        - Per Zeng (n.d.), strict hierarchies __(trees)__ can model three different types of real-world relationships: 
            - __Generic:__ _X is a Y_ or _All X are Y, and some Y are X
                - Succulent: Cactus (NTG)
                - Cactus: Succulent (BTG)
            - __Instance:__ _X is a Y_ but not a _kind_ of Y or a _part_ of Y
                - Mountain: Alps (NTI), Himalayas (NTI)
                - Alps: Moutain (BTI)
                - Himalayas: Mountain (BTI)
            - __Partitive:__ _Y consists of Xs_
                - Central nervous system: Brain (NTP), Spinal cord (NTP)
                - Brain: Central nervous system (BTP)
                - Spinal cord: Central nervous system (BTP)
        - __Polyhierarchy__ (family tree) is more complex than a strict hierarchy
        
    - **(1G) Graph structures,** AKA networks, triples, ontologies. Enables explicit modeling of different kinds of relationships (Has, IsCreatedBy, etc.) as well as more relationships (not restricted to one parent). Records are also called nodes and segments; relationships are also called edges.

    - **(2G) Relational structures** are tables with columns, and implicit relationships via attributes.
    
- **Object-based structures** allow specification of constraints, but not overall structure; include entities with attributes and relationships, describing the state of the object
    - Entity-Relationship (ER)
    - Semantic
    - Functional
    - (3G) Object-oriented: adds **behavior** alongside state

## What major questions arise in organizing?

- What organization schema/s to use
- Whether to classify (1:1) or tag (1:&infin;)
- Whether to base category divisions off anticipated volume of material
- What information structure/s to use
- Whether to prefer shallower or deeper hierarchies





# What is taxonomy?

Per Hedden, taxonomy --- the law or science (nomos) of order (taxis) --- has both general and specific meanings. 

In general, taxonomy is the discipline of creating and managing taxonomies, a term synonymous with knowledge organization structures/systems (KOS) and very nearly synonymous with controlled vocabularies (CVs). As a field, taxonomy has roots in biological taxonomies and library catalogs (which existed even in antiquity as scrolls). Companies began to use taxonomies for corporate knowledge asset management very marginally in the 1980s, then increasingly in the 1990s as web technologies spread. 

Beyond this general sense, taxonomies are also [specific kinds of KOSs.](#what-are-knowledge-organization-structures?)

## What are knowledge organization structures?

<img src="../ILLOS/KSOs.png" width="550px">

### KOSs by structure

In order of increasing complexity (number, kind, and configuration of relationships):

| KOS | Ambiguity control | Synonym control | Hierarchical relationship | Associative relationship |
| --- | --- | --- | --- | --- |
| Term list | X | | | |
| Syn ring | X | X | | |
| Taxonomy | X | X | X | |
| Thesaurus | X | X | X | X |

**Term lists** are essentially flat list, though they may include "See"/"Use" to steer people towards preferred language, or use a synonym ring approach (no preferred term among multiple). 

- **Authority file:** Identifies the definitive version of a name among all variants
- **Glossary** (vocabulary, clavis, specialized dictionary): An alphabetical list of terms with definitions inside a particular domain of knowledge.
- **Stop list:** Words to ignore in search query processing (because they are extremely common)
- **Dictionary:** Definitions, history, etc. for words.
- **Gazetteer:** A geographical dictionary

**Synonym rings** AKA synsets associate synonyms without indicating preference for one over the others (equivalence relationship). Synsets are usually invisible to users, e.g. underpinning a search engine.

**Taxonomies** AKA hierarchies AKA hierarchical taxonomies AKA tree structures arrange terms into parent/child relationships beneath a single top term (TT). A strict hierarchy requires that each term have a single parent AKA broader term (BT), though they may have multiple siblings and children AKA narrower terms (NT). 

Indexing a content object with a term is called posting; a given term contains X postings. The practice of indexing a content object with a broader term rather than a narrower term is called generic posting. If, instead, the content object is indexed with narrower and broader terms, this is called up-posting AKA autoposting. Generic posting also means subsuming narrower terms under a preferred broader term in a controlled vocabulary.

Taxonomies are a top-down approach. Thus, there may occasionally be node labels AKA blind references AKA facet indicators: terms in a CV that are never applied to a content object, but exist to preserve a coherent logical structure or to expose the logic behind choices made.

**Microcontrolled vocabularies** are subsets of a controlled vocabulary, creating a specialist CV.

**Faceted taxonomies** are a bottom-up approach to providing multiple views of the same content objects, based on shared attributes like topic, location, format, author, etc. They are often presented as navigation aids or search refinments; they may also be used to organize  very large controlled vocabulary. 

**Polyhierarchies** are hierarchies in which children may have multiple parents.

**Thesauri** capture associative relationships AKA related terms (RT) in addition to equivalence (U/UF) and hierarchical (BT/NT) relationships. Relationships are also called cross-references; they should be reciprocal (explicit entry at term Y linking to term X, explicit entry at term X linking to term Y) and may or may not be symmetric. Thesauri are useful for representing a very large controlled vocabulary.

**Semantic networks** fall short, in some way, of full **ontologies,** which are defined by their:   

- Ambition to "[define] a set of representational primitives [atoms] with which to model a domain of knowledge or discourse" (Tom Gruber, qtd. in Hedden, 2015)
- Network/graph model of interconnected triples (subject-predicate-object)
- Semantic relationships (predicates)
- Structured attributes
- Entities are instances of classes

Relevant technologies include RDF, OWL, and topic maps.

### KOSs by role in IR

As part of ingesting a content object into an information system, KOSs can be applied to the content object at several levels, creating more or less granular pictures of what the object is about: 

- Subject headings applied during cataloging may be organized in hierarchical (single parent), polyhierarchical (multi-parent), and faceted taxonomies
- Indexing may use indexing terms from an authority file or other CV

Information consumers depend on KOSs to browse and search content objects: 

- Browsing and navigating are supported by hierarchical taxonomies, faceted taxonomies, and pick lists
- [Search engines](search-engines.html) may use synonym rings AKA synsets to convert between user search terms and indexing terms that represent content objects
    - Small search engines (for website, intranet, CMS, repository) may use thesauri to facilitate search

    
    

## What are reference works?

Reference works are information-dense resources meant to be consulted for specific information, not read comprehensively. Terminology for reference works is reviewed here because it often overlaps with KOS terminology. Definitions are quoted/paraphrased from Wikipedia:

- **Dictionary:** (1) A collection of words in one or more specific languages, often arranged alphabetically, which may include information on definitions, usage, etymologies, phonetics, pronunciations, translation, etc. (2) A book of words in one language with their equivalents in another, sometimes known as a lexicon.
- **Lexicon:** The ‘catalog’ of a language’s words, which together with a ‘grammar’ constitutes the language.
- **Lexical database:** Stores terms along with information about terms.
- **Encyclopedia:** A type of reference work or compendium holding a comprehensive summary of information from either all branches of knowledge or a particular branch of knowledge.
- **Bibliography:** Collected citations for related books, articles, etc., which may be as simple as a reading list or may be extensively annotated. 
- **Thesaurus:** A list of words grouped together according to similarity of meaning (containing synonyms and sometimes antonyms), in contrast to a dictionary, which provides definitions for words, and generally lists them in alphabetical order. 
- **Almanac:** An annual publication that includes information such as weather forecasts, farmers' planting dates, tide tables, and tabular information often arranged according to the calendar. 
- **Gazetteer:** A gazetteer is a geographical dictionary or directory used in conjunction with a map or atlas. They typically contain information concerning the geographical makeup, social statistics and physical features of a country, region, or continent.
- **Directory:** A listing of information for location/navigation; e.g. business direcfory, telephone directory, web directory.
- **Catalog:** A listing of content objects (their description and location). 




## What are controlled vocabularies?

CVs consist of **terms** and **semantic relationships,** described in term records.  

Controlled vocabularies stand in contrast with natural languages, which undermine information retrieval because they are fraught with polysemes (ambiguous words --- both **homographs** and **synonyms/near-synonyms/quasi-synonyms).** At minimum, to avoid the IR pitfalls of natural languages CVs must:

- Clearly define the applicability of terms with **scope notes (SN)**
- Connect synonyms, thereby increasing recall; this is often accomplished with **UF (use for), U (use)**
- Disambiguate homographs, thereby increasing precision; this is often accomplished with a **gloss** AKA modifier AKA difference AKA qualifier term

### Relationship between CVs and metadata

Per ANSI/NISO Z39.19 (p. 19), 

- A metadata standard may require that values for certain fields come from CVs
- Metadata may be used to describe a CV, supporting its discovery as a resource
- A CV may be expressed as a metadata schema, e.g. in XML

### Constructing CVs

#### Choosing terms

Terms can be generated by a commitee (top-down, bottom-up); by empirical methods (deductive, inductive); or by a machine. Terms are chosen to cover a specific domain/information space if warranted: 

- **User warrant** emerges from user search terms and feedback;
- **Literary warrant** emerges from review of documents and standards; and
- **Organizational warrant** emerges from an organization's existing standards.

Other considerations:

- Since warrants shift over time, a taxonomist may also have a 'parking lot' for candidate terms AKA provisional terms.
- CVs can (should) be built from or within other CVs; don't duplicate!

#### Constructing terms



Types of terms:

- 

##### Scoping terms

- Concept
- Single term
- Compound term


##### Which term is preferred?

A preferred term may or may not be designated among synonyms. Preferred terms are also called descriptors or headings; non-preferred terms are also called entry terms or lead-in terms. Terms may be compound, either bound (denoting a single concept) or consisting of a focus noun (also called head nous) plus a qualifier (in the case of homographs). A term may be an orphan, lacking any relationship to other terms.

- Usage & spelling: 
    - Capitalization: 
    - Punctuation:
- Full vs. abbreviated forms: 
- Popular vs. scientific:
- (Romanized) loan words vs. translations: 

##### Grammar guidelines for terms



#### Specifying relationships



#### CV elements by impact on IR

Per ANSI/NISO Z39.19 (p. 16), **recall** is improved by indicating relationships:

- Equivalence relationships/preferred terms
- Preferred term form
- Associative relationships/related terms
- Classified and hierarchical relationships
- Postcoordination
- Concept mapping/clustering

**Precision** (minimizing false hits) is improved by controlling ambiguity:

- Parenthetical qualifiers
- Broader and narrower term hierarchical relationships
- Compound terms
- Precoordination 


### Testing CVs

The usability and IR performance of CVs should be tested:

- for conformance with standards;
- heuristically (by expert opinion); and/or 
- through user research (e.g. comparing to user-generated card-based affinity models).


### Maintaining CVs

CVs must be updated to stay valid, so there should be plan for reviews at defined intervals. 

Updates may include:

- Auditing validity of links
- Adding new terms
- Deleting over- and underused terms (may be proactive or retroactive)
- Adding **history notes (HN)** that indicate date and nature of modifications; they are important for provenance


### Managing CVs

ANSI/NISO Z39.19 (2005, pp. 99-102) lists desirable features of CV management software:

- Notes: SN, HN
- Relationships: U/UF, BT/NT, RT
    - Audit validity of relationships
    - Create reciprocal relationships automatically
- Allow definition of fields for metadata, other semantic relationships
- Display contents by hierarchy and alphabet
- Open source and hardware independent
- Usable and well-documented
- Generates reports
- Multiuser


## Displaying KOSs & CVs

- running head
- generic structure
- graphics display
- permuted display AKA rotated listing
    - KWIC, KWAC, KWOC: https://en.wikipedia.org/wiki/Key_Word_in_Context
- classified display
- flat format
- Concept map: a 2D representation of interrelated concepts



## Interoperability

The need for interoperability arises from different sources:

- Users want to metasearch across different IR systems
- Users are multilingual ([see ISO 5964 (1985)](https://www.iso.org/standard/12159.html))
- Two databases, indexed differently, must be merged
- A content object must be indexed with a CV developed for a different domain






# Sources

Abrahamson, E. & Freedman, D. H. (2008). _A perfect mess: The hidden benefits of disorder --- How crammed closets, cluttered offices, and on-the-fly planning make the world a better place._ New York City, NY: Back Bay Books.

AfterHoursProgramming.com. (n.d.) IA tutorial. Retrieved from [http://www.afterhoursprogramming.com/tutorial/Information-Architecture/Overview/](http://www.afterhoursprogramming.com/tutorial/Information-Architecture/Overview/)

ANSI/NISO. (2005). Z39.19-2005: Guidelines for the construction, management, and format of monolingual controlled vocabularies. Retrieved from [http://www.niso.org/apps/group_public/download.php/12591/z39-19-2005r2010.pdf](http://www.niso.org/apps/group_public/download.php/12591/z39-19-2005r2010.pdf)

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.

Hedden, H. (2016). _The accidental taxonomist_ (2e). Medford, NJ: Information Today, Inc.

Hjørland, B. (2011). Theoretical clarity is not "Manicheanism": A reply to Marcia Bates. _Journal of Information Science,_ 37(5), 546-552. Retrieved from [http://pure.iva.dk/files/31053333/JIS_1568_v3.pdf](http://pure.iva.dk/files/31053333/JIS_1568_v3.pdf)

Jacob, E. K. (2004). Classification and categorization: a difference that makes a difference. _Library Trends,_ 52(3), 515. Retrieved from [https://pdfs.semanticscholar.org/774e/ab27b22aa92dfaa9aeeeafbe845058e85f58.pdf](https://pdfs.semanticscholar.org/774e/ab27b22aa92dfaa9aeeeafbe845058e85f58.pdf)

NISO. (1997). TR02-1997: Guidelines for indexes and related information retrieval devices. Retrieved from [http://www.niso.org/publications/tr/tr02.pdf](http://www.niso.org/publications/tr/tr02.pdf)

Pomerantz, J. (2015). _Metadata._ The MIT Press Essential Knowledge Series. Boston, MA: MIT Press.

Rosenfeld, L., Morville, P., & Arango, J. (2015). _Information architecture for the web and beyond_ (4e). Sebastopol, California: O'Reilly Media.

UX Booth. (2015). A complete beginner's guide to information architecture. Retrieved from [http://www.uxbooth.com/articles/complete-beginners-guide-to-information-architecture/](http://www.uxbooth.com/articles/complete-beginners-guide-to-information-architecture/)

Wurman, R. S. (2014). Give yourself permission to follow your nose [video]. Retrieved from [https://www.youtube.com/watch?v=SDm1zXxpkr8](https://www.youtube.com/watch?v=SDm1zXxpkr8)

Wurman, R. S. (1990). _Information anxiety._ New York City, NY: Bantam Books.

Wurman, R. S. (1997). _Information architects._ New York City, NY: Graphis Inc.

Wyllys, R. E. (2000). Information architecture. Retrieved from [https://www.ischool.utexas.edu/~l38613dw/readings/InfoArchitecture.html](https://www.ischool.utexas.edu/~l38613dw/readings/InfoArchitecture.html)

Zeng, M. (n.d.). 4.3 Hierarchical relationships. In _Construction of controlled vocabularies: A primer._ Retrieved from [http://marciazeng.slis.kent.edu/Z3919/43hierarchy.htm](http://marciazeng.slis.kent.edu/Z3919/43hierarchy.htm)
