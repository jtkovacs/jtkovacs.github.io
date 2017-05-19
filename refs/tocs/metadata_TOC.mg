<p class="path"><a href="../pkb.html">pkb contents</a> \> metadata | nearly 744 words | updated 05/18/2017</p><div class="TOC">- 1. [What is metadata?](#what-is-metadata)
	- 1.1. [Types of metadata](#types-of-metadata)
		- 1.1.1. [Descriptive metadata](#descriptive-metadata)
		- 1.1.2. [Administrative metadata](#administrative-metadata)
		- 1.1.3. [Use metadata](#use-metadata)
	- 1.2. [Metadata association models](#metadata-association-models)
- 2. [Metadata schemas AKA element sets AKA standards](#metadata-schemas-aka-element-sets-aka-standards)
	- 2.1. [Dublin Core](#dublin-core)
- 3. [Metadata encoding schemes](#metadata-encoding-schemes)
	- 3.1. [Controlled vocabularies](#controlled-vocabularies)
	- 3.2. [Syntaxes](#syntaxes)
		- 3.2.1. [HTML ](#html-)
	- 3.3. [XML](#xml)
		- 3.3.1. [RDF](#rdf)
		- 3.3.2. [OWL??](#owl)
		- 3.3.3. [Relational databases](#relational-databases)
		- 3.3.4. [DCMI abstract model](#dcmi-abstract-model)
- 4. [Interoperability](#interoperability)
- 5. [Semantic web](#semantic-web)
	- 5.1. [Schema.org](#schema.org)
- 6. [Sources](#sources)
</div>

# 1. What is metadata?

- Metadata record

## 1.1. Types of metadata

### 1.1.1. Descriptive metadata

- Unique identifier
    - For books
        - Library of Congress Classification (LCC)
        - Dewey Decimal System
        - ISBN
    - For web, URI
        - URL

### 1.1.2. Administrative metadata

- technical
- structural
- provenance
    - WC3
- preservation
    - PREMIS
- rights
    - CC Rel
    - RightsDeclarationMD
- METS

### 1.1.3. Use metadata

- data exhaust
- logs
- paradata

## 1.2. Metadata association models

Per Duval et al. (2002), thinking from the perspective of a metadata manager (not the user perspective), metadata may be:

- **Embedded** within the markup of a resource, either automatically (as with cameras) or by a person, trained or untrained in resource description'
- **Associated** with a resource, but stored and managed in a separate format;
- **Third-party metadata**, maintained without any connection to the underlying resource.

Per Pomerantz (2015), metadata stored internally is authoritative but static; metadata stored externally is flexible and required for resource discovery.




# 2. Metadata schemas AKA element sets AKA standards

- Elements
- Values
    - Dates
        - ISO 8601
    - Format
        - MIME types

## 2.1. Dublin Core

- Core terms
- Qualifiers



# 3. Metadata encoding schemes

## 3.1. Controlled vocabularies

- Library of Congress Subject Headings
- Authority files
    - VIAF
- Thesaurus
    - J. Paul Getty thesaurus of geographic names
    - network topologies
        - ring
        - star
        - tree
    - "use for", "part of", "instance of"
- Ontologies
- [Tagging]

## 3.2. Syntaxes

AKA structured data??

There should be a distinction here between data serialization formats (e.g. JSON, XML, YAML) and data models (RDF); not sure how this relates to the concepts of file format, markup, and encoding.

### 3.2.1. HTML 

## 3.3. XML

- DTD
- DOM

### 3.3.1. RDF

"... an additional layer on top of XML that is intended to simplify the reuse of vocabulary terms across names" (Duval et al., 2002)

### 3.3.2. OWL??

### 3.3.3. Relational databases

### 3.3.4. DCMI abstract model



# 4. Interoperability

Per Duval et al. (2002), "Semantics is about meaning; syntax is about form. Agreements about both are necessary for two communities to share metadata." The semantic and machine ioteroperability of metadata is facilitated by adherance to the following principles:

- **Modularity:** thematic modules populating clearly delineated namespaces in objects across the web (in other words, the difficulty is not in combining different metadata element sets; the difficulty is indicating when and where different MES are being used)
- **Extensibility:** it should be possible to customize a MES by adding elements beyond those in the base schema, which could then be selectively ignored by any interoperability mechanisms
- **Refinability:** 
    - elements should have predefined qualifiers so that users can choose their level of detail
    - elements should include recommended controlled vocabularies or encoding schemes, that users may follow or not
- **Multilingualism:** strive to make information globally accessible through
    - internationalization: the development of 'neutral' standards
    - localization: the adaptation of international standards to local needs

There are practical considerations that arise in pursuit of these principles:

- "The purpose of an application profile is to adapt or combine existing schemas into a package that is tailored to the functional requirements of a particular application, while retaining interoperability with the original base schemas". Application profiles must handle:
    - Cardinality enforcement (optional/conditional/mandatory)
    - Value space restrictions
    - Relationship and dependency restrictions
    - Namespace declarations
- It is important to keep syntax standards and semantic standards independent
- Tokens are machine-readable, so should be invariant; labels are meant for humans, and should vary locally
- People are working on development of metadata registries to help metadata users access metadata standards, syntax schemas, and controlled vocabularies
- Software should compensate for the tendency of users to fill out irrelevant metadata elements or leave relevant ones empty
- Subjectivity of metadata 
- Balancing cataloguing (which produces metadata) and searching (based on machine-generated indexes); "Between these two extremes lies a broad range of metadata creation that can be automated to some degree, and which can be expected to grow in importance as advances in such areas as natural language processing, data mining, profile and pattern recognition algorithms become more effective.



# 5. Semantic web

- SEO & keyword stuffing
- linked data
    - defererencability
    - sameAs
    - Facebook's OGP

## 5.1. Schema.org

- microdata


    
# 6. Sources

Duval, E., Hodgins, W., Sutton, S., & Weibel, S. L. (2002). Metadata principles and practicalities. _D-Lib Magazine, 8_(4), 16-33.

Pomerantz, J. (2015). _Metadata._ The MIT Press Essential Knowledge Series. Boston, MA: MIT Press. 

