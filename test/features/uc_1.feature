Feature: Information from two different coalition ontologies can be shared

In cases where two different coalition partners are collaborating on a common mission or problem, and the partners have different but related ontologies describing the sensitivity of exchanged content, the system enables the partners to share data based on understood commonality in ontologies and the application of those ontologies to exchanged content.

Here, we have two related ontologies, ontology A and ontology B.  Ontology A:

Unclassified
\
Secret
\
Top Secret
\         \
Magenta   Vermillion

Ontology B:
Unprotected
\
Confidential
\
Eyes Only
\        \
Glacier  Crevasse

In these taxonomies:

Unclassified ~ Unprotected
Confidential ~ Secret
top Secret ~ Eyes Only

All other classes are not equivalent.

Scenario: Common ontlogical analysis
	Given The system is configured for ontological analysis
	When an analyst requests content
#	And the system finds content classified under a different ontology
#	Then the ontologies are rectified
	Then the analyst is allowed to see the information they are allowed to see

Scenario: Vector distance calculation
Scenario: Planar Projection
Scenario: Bayesian Analysis
Scenario: K-Means Clusters
