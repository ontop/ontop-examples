[QueryItem="Qu1"]
PREFIX : <http://uob.iodt.ibm.com/univ-bench-dl.owl#>
SELECT DISTINCT ?X WHERE {
	?X a :Person .
}

[QueryItem="Qu2"]
PREFIX : <http://uob.iodt.ibm.com/univ-bench-dl.owl#>
SELECT DISTINCT ?X WHERE {
	?X a :Employee .
}

[QueryItem="Qu3"]
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://uob.iodt.ibm.com/univ-bench-dl.owl#>
SELECT distinct ?X ?Y
WHERE
{?X rdf:type ub:ResearchGroup .
  ?X ub:subOrganizationOf ?Y}

[QueryItem="Qu4"]
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://uob.iodt.ibm.com/univ-bench-dl.owl#>
SELECT distinct ?X ?Y ?Z
WHERE
{?X rdf:type ub:Chair .
  ?Y rdf:type ub:Department .
  ?X ub:worksFor ?Y .
  ?Y ub:subOrganizationOf ?Z}


