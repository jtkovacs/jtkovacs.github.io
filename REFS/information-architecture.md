

# What is information retrieval?

IR occurs when a user retrieves information objects AKA content objects (documents and metadata) from an information retrieval system (e.g. libraries, archives, repositories/portals, websites, databases). [IR requires IA.](#what-is-information-architecture?)


## IR systems

- Catalogs, search engines, ??? 
- Svenonius (2005): **"Systems that do not employ vocabulary control may be characterized in terms of their indexing: natural language, derived, keyword, or title word indexing; or, in terms of the type of searching they allow: free-text searching or full-text searching. It is not a foregone conclusion that a system with vocabulary control is better than one without it."**


## Major activities in IR

### Cataloging & indexing

Information professionals work to ensure that IR (1) has good **precision,** AKA 'satisfies the requirement for general survey' or 'satisfies the collocating requirement' or attains 'representational predictability'; (2) has **good recall;** and (3) is [possible across multiple IR systems.](#interoperability) They do this by (1) [creating search algorithms](search-engines.html) or by (2) ingesting information objects into a catalog, which includes:

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


### Searching, browsing, & navigating
    
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

Hedden (2016) offers a typology in which taxonomies (i.e., knowledge organization structures) have different bases/origins. KOSs may be (1) objective, with obvious empirical basis; (2) socially-negotiated, perhaps eventually becoming (3) culturally embedded; or (4) idiosyncratic:

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

#### Record-based

Can’t express constraints on the data, but express structure well.

##### Hierarchical (1G)

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

##### Graph (1G)

AKA networks, triples, ontologies. Enables explicit modeling of different kinds of relationships (Has, IsCreatedBy, etc.) as well as more relationships (not restricted to one parent). Records are also called nodes and segments; relationships are also called edges.

##### Relational (2G)

Tables with columns, and implicit relationships via attributes; see [notes on databases.](databases.html)
    
#### Object-based

Allow specification of constraints, but not overall structure; include entities with attributes and relationships, describing the state of the object.

- Entity-Relationship (ER)
- Semantic
- Functional
- Object-oriented (3G): adds **behavior** alongside state

### Questions that arise in organizing

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

- **Name authority file:** Identifies the definitive version of a name among all variants
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

See also [uses of CVs.](#uses-of-cvs)    
    

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

CVs (AKA authority lists) consist of **terms, syntax** (how terms may be combined), and **term records** containing each term's **semantic relationships, scope notes,** and **history notes.**    

Controlled vocabularies stand in contrast with natural languages, which undermine information retrieval because they are fraught with polysemes* (ambiguous words --- both homographs and synonyms/near-synonyms/quasi-synonyms). At minimum, to avoid the IR pitfalls of natural languages CVs must:

- Clearly define the applicability of terms with scope notes (SN)
- Connect synonyms, thereby increasing recall; this is often accomplished with **UF (use for), U (use)**
- Disambiguate homographs, thereby increasing precision; this is often accomplished with a **gloss** AKA modifier AKA difference AKA qualifier term

*_Why so many polysemes in natural language?_

- _Words inherited from different parent languages, e.g. Greek and Latin_
- _Popular words versus jargon_
- _Trade names that become generic, e.g. bandaids_
- _Dialectical variations reflecting geographic boundaries and social groups_
- _Formal words versus slang_
- _Political changes leading to changes in preferred terms_
- _Competing terms for emerging objects and phenomena_



### Uses of CVs

Svenonius (2005), also see [KOSs by role in IR:](#koss-by-role-in-ir) *"In the form of terminological databanks, CVs are used to assist in both manual and automatic translation. In the form of glossaries, they standardize and explicate the meaning or usage of terms in specialized fields of activity. In the form of literary thesauri they assist in composition by facilitating the expression of ideas. In the form of conceptual structures they give backbone to knowledge representation systems."*    

#### CV-metadata connections

Per ANSI/NISO Z39.19 (p. 19), 

- A metadata standard may require that values for certain fields come from CVs
- Metadata may be used to describe a CV, supporting its discovery as a resource
- A CV may be expressed as a metadata schema, e.g. in XML




### Constructing CVs

#### Where do terms come from?

Terms are chosen from a specific domain/information space if their inclusion is warranted:

- **User warrant** emerges from user search terms and feedback;
- **Literary warrant** emerges from review of documents and standards; and
- **Organizational warrant** emerges from an organization's existing standards.
- **Structural warrant** emerges from, for example, a hierarchical KOS, where a parent term is created to relate child terms that arose from other warrants
- **Consistency,** though this "frequently conflict[s]" with the other warrants (Svenonius, 2005)

Since warrants shift over time, there should be a 'parking lot' for candidate terms AKA provisional terms. Terms can be generated by a committee (top-down, bottom-up); by empirical methods (deductive, inductive); by a machine; or from an existing CV (don't duplicate!).

#### How are terms expressed?

##### Scope & coordination

The basic rule is that a term should denote a single **concept,** or unit of thought. There are different kinds of concepts:

- Things and their parts
- Materials
- Activities, processes
- Events, occurrences
- Properties, qualities, states
- Disciplines, fields
- Units of measurement

This is easy to accomplish with a **single-word term,** but things get more complex; there are three kinds of multiword AKA **compound terms.** Use of a compound term should be determined by warrant, total #terms in the CV (more compound terms means more overall terms), and intended format (print sometimes benefits from precoordinated terms); see ANSI/NISO Z9.19 pp. 39-40 for more guidance and examples.

A <span style="color: red; font-weight: bold;">(1)</span> **bound term** uses multiple words or a phrase to denote a single concept, e.g. _oral surgery._ The inverted form of bound terms may be included as an entry term, e.g. _surgery, oral: see oral surgery._ 

These naturally occurring compound terms are generally preferable to the second kind of multiword term, <span style="color: red; font-weight: bold;">(2)</span> **qualified homographs** --- for example, _religious tolerance_ is generally better than _tolerance (religious)._  If no bound compound term exists, ambiguous terms (AKA the head or focus nouns) should receive a modifier AKA difference. Additionally, the scope of any term (not just homographs) may be clarified with a **scope note (SN).** If a SN mentions another term in the vocabulary, it should receive a reciprocal SN or cross-reference: _term2: X SN term1._

- Try to standardize qualifiers (e.g., don't have _biology_ and _bioscience_ both as qualifiers)
- The qualifier must not itself be a homograph
- The addition of a qualifier must not make the term a compound concept
- Qualify even the domain-specific dominant use of a term
- Qualify even if only one use of the homograph occurs in the CV
    - ... unless other meanings of the homograph are entirely outside the domain
        - ... but even then, anticipate metasearching and include a qualifier

While compound terms denote a single concept, <span style="color: red; font-weight: bold;">(3)</span> **coordinated terms** associate several concepts with a single information object. This can be embedded in the object **(precoordination),** as with Library of Congress subject headings in books: _English Language--Rhetoric, Persuasion (Rhetoric), Report Writing._ Precoordinated terms enable browsing with great specificity, describe complex concepts, and impose alphabetic proximity on related terms that would otherwise be far apart. Given the high cost of taxonomist labor, though, it's often better to let users combine terms interactively during search **(postcoordination),** e.g. _English Language AND Rhetoric AND Persuasion AND Report Writing._ 

##### Grammatical forms

- **Parts of speech:**
    - <span style="color:red;">Prefer nouns\*</span> or in the case of bound compound terms, noun phrases;
        - Prefer premodified/adjectival noun phrases, e.g. _historical drama, cold fusion_
        - Avoid postmodified/prepositional noun phrases unless idiomatic, e.g. avoid _hospitals for children_ in favor of _children's hospital,_ but prefer _burden of proof_ to _proof's burden_
    - Avoid verbs used as nouns; e.g., prefer _reading_ to _read,_ _cookery_ to _cook_
    - Single adjectives are sometimes included:
        - ... to facilitate coordination and avoid multiple compound terms, e.g. _small, portable, offshore_
        - ... as an entry term, e.g. _cardiac: see also terms beginning with heart_
    - Single adverbs are rarely needed, but depends on the domain
    - Drop initial articles unless they're important for finding an item (may depend on the underlying natural language)
- **Pluralization:**
    - Count nouns (how many?) should be plural unless the singular form is common in the domain
    - Mass nouns (how much?) should be singular unless users regard the noun as a class with >1 member
    - Regardless, abstract concepts and unique entities are singular
    - Singular and plural forms of a noun may denote different concepts, so both may appear (qualified) in the CV

<span style="color:red;">\*Svenonius (2005)</span> explains the intended effect of this standard: CVs where every term is "context independent", i.e. self-contained and thus reusable. However, context independence is "not normally operative in classification schemes where the verbal headings are governed by the principle of hierarchical force."     

##### Typographic forms

- **Capitalization:** don't capitalize unless it's a proper noun
- **Punctuation:** minimize because it can interfere with sorting, searching, etc.
    - Reserve parentheses for qualifiers 
    - Use apostrophes for possessives and proper names
    - Diacritical marks are acceptable e.g. for loan words
 



#### How are terms related?

All relationships are **reciprocal,** which should be captured by the taxonomy software. Most relationships (except RT) are asymmetric. **Orphan terms** lack any relationship.

##### Equivalence & preferred terms

Synonyms, near-synonyms, lexical variants, and (when **generic posting** is practiced) child terms are subsumed into a single **preferred term** with **USE/USED FOR** or **U/UF.** Preferred terms are also called descriptors and headings; non-preferred terms are also called entry or lead-in terms.

- Only equate near-synonyms if warranted
- Include a term's full form and acronym:
    - Prefer full form unless acronym dominant in the domain
    - If acronym is dominant but ambiguous, prefer full form 
- Include a term's popular and scientific forms; prefer whichever is dominant in the domain
- Consult lexical authorities for official spelling
- Prefer whichever is more popular for loan words versus translations 
- Romanization converts non-Roman characters to Roman characters via a table, which may not align with informal but dominant Romanizations; prefer the dominant form
- For compound terms where postcoordination is intended, and component terms have no other use: 
    - _coal mining: USE coal AND mining_
    - _coal: USED FOR coal AND mining_
    - _mining: USED FOR coal AND mining_

##### Hierarchy

See [discussion of hierarchy, above.](#hierarchical-(1g))

##### Association

Associative relationships should be recorded between terms that are needed to explain each other, or readily evoke each other, or are etymologically related, or are derived one from the other. Although they may be disambiguated in a graph database, in a thesaurus the following relationships (and more) are collapsed under RELATED TERM/RT:

- Cause/effect
- Process/agent or counteragent
- Action/property
- Action/target
- Action/product
- Raw material/product
- Concept/property
- Concept/origins
- Concept/measurement unit or measurement mechanism
- Concept/antonym
- Object/property
- Object/origins
- Object/measurement unit or measurement mechanism
- Discipline/practioner



#### CV elements by impact on IR

Per ANSI/NISO Z39.19 (p. 16), 

- **Recall** is improved by indicating relationships:
    - Equivalence relationships/preferred terms
    - Preferred term form
    - Associative relationships/related terms
    - Classified and hierarchical relationships
    - Postcoordination
    - Concept mapping/clustering
- **Precision** (minimizing false hits) is improved by controlling ambiguity:
    - Parenthetical qualifiers
    - Broader and narrower term hierarchical relationships
    - Compound terms
    - Precoordination 


### Testing CVs

The usability and IR performance of CVs should be tested:

- for conformance with standards;
- heuristically (by expert opinion); and/or 
- through user research (e.g. comparing to user-generated card-based affinity models).


### Documenting CVs

Documentation should cover:

- Purpose of CV
- Scope of CV
- Explanation of conventions and rules governing
    - Term choice
    - Term form (punctuation, abbreviation, etc.)
    - Filing and sorting
    - Navigation
- Total #terms and #entry_terms; #entry/#total is a user accessibility metric
- Date last updated, and [update policies](#maintaining-cvs)
- Contact information


### Maintaining CVs

CVs must be updated to stay valid, so there should be plan for reviews at defined intervals. 

Updates may include:

- Auditing validity of links
- Adding new terms
- Deleting over- and underused terms (may be proactive or retroactive)
- Adding **history notes (HN)** that indicate date and nature of modifications; they are important for provenance


### Managing CVs

ANSI/NISO Z39.19 (pp. 99-102) lists desirable features of CV management software:

- Notes: SN, HN
- Relationships: U/UF, BT/NT, RT
    - Audit validity of relationships
    - Create reciprocal relationships automatically
- Allow definition of fields for metadata, other semantic relationships
- Display contents by hierarchy and alphabet
- Open source and hardware independent
- Usable and well-documented
- Generates reports
- Accessible to multiple users


### Displaying CVs

#### Overarching forms

- **Alphabetic:**
    - Alphabetic listing
    - Flat format (only shows immediate BT/s & NT/s)
- **Graphic** 
- **Hierarchical:**
    - Tree AKA systematic display, classified display:
        - Top term
    - Multilevel:
        - Symbols and generic structures (GS)
        - BT1, BT2, ... BTn
        - NT1, NT2, ... NTn
    - Two-way hierarchical structure
    - Broad categories
    -  Faceted display
- **Permuted** AKA rotated display:
    - KWIC
    - KWAC
    - KWOC

#### Organization within or across forms

- Term detail
    - Relationships can be organized:
        - Alphabetically or logically
        - Into categories, under node labels (not used for indexing)
    - Depthof U/UF can be adjusted to compensate for hierarchy display type (?)
- Sorting:
    - Prefer word-by-word ("nothing before something")
    - Sort numbers by magnitude
    - Ignore commas in inverted USE references
    - Treat parentheses around glosses as special characters; don't ignore

#### Format considerations

- **Print:** Minimize double lookups, and use a running header to indicate position
- **Screen:** 
    - UF principles
    - Keyword search
    - Consider accessibility
    - Term detail
    - Display hierarchy
    - Pick list
- **Web,** a subset of screens: 
    - Path hierarchy display: show the file path (URL) of the current page
    - Path hierarchy in context: show all file paths together (e.g., [PKB index)](../../pkb.html) 
    - Facilitate browsing with scroll bars, arrows, hyperlinks, [+] (click to expand)



## Interoperability

Per ANSI/NISO Z39.19, the need for interoperability arises from different sources:

- Users want to metasearch across different IR systems
- Users are multilingual [(see ISO 5964)](https://www.iso.org/standard/12159.html)
- Two databases, indexed differently, must be merged
- A content object must be indexed with a CV developed for a different domain

Interoperability may be approached in different ways:

- Combine CVs
- Create a micro CV
- Create a map/crosswalk between CVs

Interoperability data may be stored in:

- Authority records
- Vocabulary mappings
- Semantic networks
- Lexical databases, e.g. WordNet





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

Svenonius, E. (2005). Design of controlled vocabularies. _Encyclopedia of Library and Information Science, 45_(10), 82–109.

UX Booth. (2015). A complete beginner's guide to information architecture. Retrieved from [http://www.uxbooth.com/articles/complete-beginners-guide-to-information-architecture/](http://www.uxbooth.com/articles/complete-beginners-guide-to-information-architecture/)

Wurman, R. S. (2014). Give yourself permission to follow your nose [video]. Retrieved from [https://www.youtube.com/watch?v=SDm1zXxpkr8](https://www.youtube.com/watch?v=SDm1zXxpkr8)

Wurman, R. S. (1990). _Information anxiety._ New York City, NY: Bantam Books.

Wurman, R. S. (1997). _Information architects._ New York City, NY: Graphis Inc.

Wyllys, R. E. (2000). Information architecture. Retrieved from [https://www.ischool.utexas.edu/~l38613dw/readings/InfoArchitecture.html](https://www.ischool.utexas.edu/~l38613dw/readings/InfoArchitecture.html)

Zeng, M. (n.d.). 4.3 Hierarchical relationships. In _Construction of controlled vocabularies: A primer._ Retrieved from [http://marciazeng.slis.kent.edu/Z3919/43hierarchy.htm](http://marciazeng.slis.kent.edu/Z3919/43hierarchy.htm)
