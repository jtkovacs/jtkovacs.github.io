<p class="path"><a href="../pkb.html">pkb contents</a> \> metadata | just under 1261 words | updated 12/28/2017</p><div class="TOC">- &nbsp;1. [What is metadata?](#what-is-metadata)
	- &nbsp;1.1. [Types of metadata](#types-of-metadata)
		- &nbsp;1.1.1. [Descriptive metadata](#descriptive-metadata)
		- &nbsp;1.1.2. [Administrative metadata](#administrative-metadata)
		- &nbsp;1.1.3. [Use metadata](#use-metadata)
	- &nbsp;1.2. [Metadata association models](#metadata-association-models)
		- &nbsp;1.2.1. [Data dictionary](#data-dictionary)
- &nbsp;2. [Metadata schemas](#metadata-schemas)
	- &nbsp;2.1. [Dublin Core](#dublin-core)
- &nbsp;3. [Metadata encoding schemes](#metadata-encoding-schemes)
	- &nbsp;3.1. [Controlled vocabularies](#controlled-vocabularies)
	- &nbsp;3.2. [Syntaxes](#syntaxes)
		- &nbsp;3.2.1. [HTML](#html)
	- &nbsp;3.3. [XML](#xml)
		- &nbsp;3.3.1. [RDF](#rdf)
		- &nbsp;3.3.2. [OWL??](#owl)
		- &nbsp;3.3.3. [Relational databases](#relational-databases)
		- &nbsp;3.3.4. [DCMI abstract model](#dcmi-abstract-model)
- &nbsp;4. [Interoperability](#interoperability)
- &nbsp;5. [Semantic web](#semantic-web)
	- &nbsp;5.1. [Schema.org](#schema.org)
- &nbsp;6. [Sources](#sources)
	- &nbsp;6.1. [Cited](#cited)
	- &nbsp;6.2. [References](#references)
	- &nbsp;6.3. [Read](#read)
	- &nbsp;6.4. [Unread](#unread)
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

### 1.2.1. Data dictionary

One highly useful form that metadata can take is a central data dictionary AKA metadata registry, explaining "all the data holdings of an organization, a part of the holdings or a single database" in terms of individual data elements and tables (at a minimum; data dictionaries can also include [ER diagrams,](modeling.html#erds-for-databases) and a database security model). [ISO 11179 applies.](https://en.wikipedia.org/wiki/ISO/IEC_11179)

Toshach (2006) recommends inclusion of the following elements in a data dictionary:

| Elements | Definitions |
| --- | ----------------------- |
| Data element domain name | A data content topic, for example, a named data collection protocol – EMAP.  Note there may be multiple domains or sub-domains within a particular data dictionary. |
| Data element number | A number associated with the data element name for use in technical documents. |
| Data element name | Commonly agreed, unique data element name. Note: there are likely to be multiple data element names for a particular domain. |
| Data element field name | The name used for this data element in computer programs and database schemas.  It is often an abbreviation of the Date Element Name (eg. Cellular Phone Number might be assigned a field name of Cell_Ph_No). |
| Data element definition | Description of the meaning of the data element. |
| Data element unit of measure (UOM) | Scientific or other unit of measure that applies to the data element. |
| Data element precision | The level to which the data will be reported, e.g. 1 mile plus or minus .001 mile. |
| Data element data type | The type of data (e.g. Characters, Numeric, Alpha-numeric, date, list, floating point. |
| Data element size and decimalization | The maximum field length that will be accepted by the database together with any decimal points (e.g. 30(2)) refers to a field length of 30 with 2 decimal points). |
| Field constraints | Required fields must be populated. Conditional fields must be populated when another related field is populated (e.g. if a city name is required a zip code may also be required). “Null” means the data type is undefined (note: a null value is not the same as a blank or zero value). |
| Default value | A value that is predetermined. It may be fixed or a variable, like current date and time of the day. |
| Edit mask | An example of the actual data layout required, (e.g. yyyy/mm/dd). |
| Data business rules | There are often the rules that define how data would be managed within an information system (e.g. Fish data could be coded (1=adult, 2=parr, 3=juveniles) and these codes would then be included in the data dictionary for use by developers and users. Other business rules, for example how rights to create, read, update or delete records are assigned if they are needed. |


# 2. Metadata schemas

AKA element sets AKA standards; see [MetadataStandards.org.](http://metadata-standards.org/)

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

- "... an additional layer on top of XML that is intended to simplify the reuse of vocabulary terms across names" (Duval et al., 2002)
- SKOS
- Turtle

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

## 6.1. Cited

Duval, E., Hodgins, W., Sutton, S., & Weibel, S. L. (2002). Metadata principles and practicalities. _D-Lib Magazine, 8_(4), 16-33.

Pomerantz, J. (2015). _Metadata._ The MIT Press Essential Knowledge Series. Boston, MA: MIT Press.

Toshach, S. (2006). Best practices for data dictionary definitions and ssage. Northwest Environmental Data Network. Retrieved from [https://www.pnamp.org/sites/default/files/best_practices_for_data_dictionary_definitions_and_usage_version_1.1_2006-11-14.pdf](https://www.pnamp.org/sites/default/files/best_practices_for_data_dictionary_definitions_and_usage_version_1.1_2006-11-14.pdf)

## 6.2. References

- [http://metadata-standards.org/](http://metadata-standards.org/)

## 6.3. Read

## 6.4. Unread
