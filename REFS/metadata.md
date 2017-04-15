
# What is metadata?

- Metadata record

## Descriptive metadata

- Unique identifier
    - For books
        - Library of Congress Classification (LCC)
        - Dewey Decimal System
        - ISBN
    - For web, URI
        - URL

## Administrative metadata

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

## Use metadata



# Metadata schemas AKA element sets AKA standards

- Elements
- Values
    - Dates
        - ISO 8601
    - Format
        - MIME types

## Dublin Core

- Core terms
- Qualifiers



# Metadata encoding schemes

## Syntaxes

### HTML & XML

- DTD
- DOM

### RDF

"... an additional layer on top of XML that is intended to simplify the reuse of vocabulary terms across names" (Duval et al., 2002)

### Relational databases

### DCMI abstract model

## Controlled vocabularies

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



# Metadata association models

Per Duval et al. (2002), thinking from the perspective of a metadata manager (not the user perspective), metadata may be:

- **Embedded** within the markup of a resource, either automatically (as with cameras) or by a person, trained or untrained in resource description'
- **Associated** with a resource, but stored and managed in a separate format;
- **Third-party metadata**, maintained without any connection to the underlying resource.

Per Pomerantz (2015), metadata stored internally is authoritative but static; metadata stored externally is flexible and required for resource discovery.



# Interoperability and the semantic web

- SEO & keyword stuffing

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


    
# Sources

Duval, E., Hodgins, W., Sutton, S., & Weibel, S. L. (2002). Metadata principles and practicalities. _D-Lib Magazine, 8_(4), 16-33.

Pomerantz, J. (2015). _Metadata._ The MIT Press Essential Knowledge Series. Boston, MA: MIT Press. 

