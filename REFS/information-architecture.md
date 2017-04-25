

# What is information architecture?

Rosenfeld, Morville, and Arango (2015) say that IA aims to facilitate both the finding and understanding of information. The "finding" dimension of IA is information retrieval, the legacy of library science; the "understanding" dimension comes via Richard Saul Wurman, who focused on making complex systems intelligible through visualization. 



## What is information retrieval?

IR occurs when a user retrieves information objects AKA content objects (documents and metadata) from an information retrieval system (e.g. libraries, archives, repositories/portals, websites, databases). 

Information professionals work to ensure that IR (1) has good **precision;** (2) has **good recall;** and (3) is [possible across multiple IR systems.](#interoperability) They do this by ingesting information objects, which includes:

- **CATALOGING** the object, i.e. describing/representing an information object with metadata, including subject headings and subheadings. Cataloged objects are listed in a catalog. Subject headings and subheadings can be combined from the beginning (precoordination) or combined by users while searching (postcoordination)

    - Assigning subject headings entails **CLASSIFYING** objects. "In LIS, the term 'classification' is used to refer to three distinct but related concepts: a system of classes, ordered according to a predetermined set of principles and used to organize a set of entities; a group or class in a classification system; and the process of assigning entities to classes in a classification system" (Jacob, 2004, p.522). 
    - The first sense of classification given here (constructing classes) may also be called **CATEGORIZATION,** although categories are perhaps less strict than classes. "Categorization is the process of dividing the world into groups of entities whose members are in some way similar to each ... By reducing the load on memory and facilitating the efficient storage and retrieval of information, categorization serves as the fundamental cognitive mechanism that simplifies the individual’s experience of the environment" (Jacob, 2004, p. 518).
    
- **INDEXING** the object, i.e. mapping out the contents of an information object. Indexing may be closed (specific to a single object) or open (using terms from a controlled vocabulary). For named entities, an authority file shuld be consulted. 

    - Indexing may be contrasted with **TAGGING,** where keywords are selected from the text itself rather than from an indexing language. This allows for a grassroots view of what something is about.

To retrieve information, users engage with information systems by:

- **SEARCHING** for a specific piece of information; this is the concern of back-end IA. Simultaneous search of multiple information systems is called metasearching, broadcast searching, cross-database searching, federated searching, and parallel searching.
    
- **BROWSING** a collection of information; this is the concern of front-end IA, with the goal of intuitive user interfaces and navigational structures. Browsing is "quick examination of the relevance of a number of objects which may or may not lead to a closer examination or acquisition/selection of (some of) these objects" Hjørland (2011); "visually scanning through organized collections of representations of content objects" (ANSI/NISO Z39.19-2005, p. 157). 

    - **NAVIGATION** is related, but has implications of (1) traversing a website (2) via "pre-established links or relationships" (ANSI/NISO Z39.19-2005, p. 162).


    
## What ways can things be organized?

Wurman (1990) claims there are only five ways to organize items. Similarly, Wyllys (2000) states that information can be organized according to different **schemas** that encompass Wurman's five ways (italicized):

- **Exact schemas** (mutually exclusive, AKA classes): _alphabet, location, chronology, continuum_
- **Inexact schemas,** AKA _categories:_ topical, task-oriented, audience-specific, metaphor-driver (e.g., information lifecycle)
- **Hybrid schemas,** combining multiple methods (may be confusing)

But, Wyllys adds, there are also three fundamental information **structures,** AKA **data models.** In their review of database history (gens 1-3), Connolly and Begg (2015) classify Wyllys' three structures as "record-based", and add "object-oriented" as another top-level category:

- **Record-based structures** can’t express constraints on the data, but express structure well

    - **(1G) Hierarchical structures** 
        - Per Zeng (n.d.), strict hierarchies (trees) can model three different types of real-world relationships: 
            - Generic: **X is a Y** or **All X are Y, and some Y are X**
                - Succulent: Cactus (NTG)
                - Cactus: Succulent (BTG)
            - Instance: **X is a Y** but not a _kind_ of Y or a _part_ of Y
                - Mountain: Alps (NTI), Himalayas (NTI)
                - Alps: Moutain (BTI)
                - Himalayas: Mountain (BTI)
            - Partitive: **Y consists of Xs**
                - Central nervous system: Brain (NTP), Spinal cord (NTP)
                - Brain: Central nervous system (BTP)
                - Spinal cord: Central nervous system (BTP)
        - Polyhierarchy (family tree) is more complex than a strict hierarchy
        
    - **(1G) Graph structures,** AKA networks, triples, ontologies. Enables explicit modeling of different kinds of relationships (Has, IsCreatedBy, etc.) as well as more relationships (not restricted to one parent). Records are also called nodes and segments; relationships are also called edges.

    - **(2G) Relational structures** are tables with columns, and implicit relationships via attributes.
    
- **Object-based structures** allow specification of constraints, but not overall structure; include entities with attributes and relationships, describing the state of the object
    - Entity-Relationship (ER)
    - Semantic
    - Functional
    - (3G) Object-oriented: adds **behavior** alongside state

Schemas and structures work together. For example, my Zotero library is a hierarchy (structure) of topical categories (schema), automatically sorted by alphabet (schema).
The distinction I draw is that schemas are for the conceptual (abstract, disembodied) organization of information into groups, whereas structures describe the structure and behavior of those groups. 

### What major questions arise in organizing?

- What organization schema/s to use
- Whether to classify (1:1) or tag (1:&infin;)
- Whether to base category divisions off anticipated volume of material
- What information structure/s to use
- Whether to prefer shallower or deeper hierarchies

### Must information be organized?

Per Abrahamson & Freedman's _A perfect mess_ (2008), order (like all things) has both benefit and cost. Even setting feasibility aside, it's probably never the case that 100% order is _optimal._ 

At the same time, because individuals' organization strategies and preferences vary so much, **shared information spaces** must (?) be organized according to intelligible principles that prospective users of the space can access and learn. 

Somewhat related, Heather Hedden (2016) offers this typology in which taxonomies may be (1) objective, with obvious empirical basis; (2) socially-negotiated, perhaps eventually becoming (3) culturally embedded; or (4) idiosyncratic:

![](../ILLOS/taxonomy_status.png)


# What is taxonomy?

Per Hedden, taxonomy --- the law or science (nomos) of order (taxis) --- has both general and specific meanings. 

In general, taxonomy is the discipline of creating and managing taxonomies, a term synonymous with knowledge organization structures/systems (KOS) and very nearly synonymous with controlled vocabularies (CVs). As a field, taxonomy has roots in biological taxonomies and library catalogs (which existed even in antiquity as scrolls). Companies began to use taxonomies for corporate knowledge asset management very marginally in the 1980s, then increasingly in the 1990s as web technologies spread. 

Beyond this general sense, a taxonomy is also a [specific kind of KOS.](#what-are-knowledge-organization-structures?)

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

As part of ingesting a content object to an information system, KOSs can be applied to the content object at several levels, creating more or less granular pictures of what the object is about: 

- Subject headings applied during cataloging may be organized in hierarchical (single parent), polyhierarchical (multi-parent), and faceted taxonomies
- Indexing may use indexing terms from an authority file or other CV

Information consumers depend on KOSs to browse and search content objects: 

- Browsing and navigating are supported by hierarchical taxonomies, faceted taxonomies, and pick lists
- Search engines may use thesauri and synonym rings AKA synsets to convert between user search terms and indexing terms that represent content objects

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

Controlled vocabularies stand in contrast with natural languages, which undermine information retrieval because they are fraught with polysemes (ambiguous words, both homographs/homophones and synonyms/near-synonyms/quasi-synonyms). Natural language in content objects is called free text. **Versus natural languages, CVs:**

- Must clearly define the SCOPE of terms. This is done with scope notes (SN).
- Must somehow link SYNONYMS, thereby increasing recall. This is often accomplished via the indicators UF (use for) and U (use), e.g. Salinity UF Saltiness, Saltiness U Salinity.
- Must distinguish between HOMOGRAPHS, thereby increasing precision. Disambiguation is often accomplished with a modifier AKA difference AKA qualifier term AKA gloss, e.g. Mercury (metal), Mercury (planet), Mercury (car).
- May capture SEMANTIC RELATIONSHIPS between terms, improving both recall and precision. 

CVs consist of terms and relationships, described in term records. A preferred term may or may not be designated among synonyms. Preferred terms are also called descriptors or headings; non-preferred terms are also called entry terms or lead-in terms. Terms may be compound, either bound (denoting a single concept) or consisting of a focus noun (also called head nous) plus a qualifier (in the case of homographs). A term may be an orphan, lacking any relationship to other terms.

### What activities comprise vocabulary control?

#### Constructing CVs

##### Choosing terms

Terms are chosen if warrant exists; this warrant may take a while to develop, leading to the category of candidate terms AKA provisional terms. Warrants have different bases:

- User warrant emerges from user search terms and feedback;
- Literary warrant emerges from review of documents and standards; and
- Organizational warrant emerges from an organization's existing standards.

##### Specifying relationships

#### Testing CVs

#### Maintaining CVs

- History notes (HN) indicate date and nature of modifications; they are important for provenance

### CV elements by impact on IR

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

### Relationship between CVs and metadata

Per ANSI/NISO Z39.19 (p. 19), 

- A metadata standard may require that values for certain fields come from CVs
- Metadata may be used to describe a CV, supporting its discovery as a resource
- A CV may be expressed as a metadata schema, e.g. in XML



        
# Displaying KOSs

- running head
- generic structure
- graphics display
- permuted display AKA rotated listing
    - KWIC, KWAC, KWOC: https://en.wikipedia.org/wiki/Key_Word_in_Context
- classified display
- flat format
- Concept map: a 2D representation of interrelated concepts





# Interoperability

- Mapping, cross-walks
- Transcription, transliteration, romanization





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
