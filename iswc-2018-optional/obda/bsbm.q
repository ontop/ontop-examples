[QueryItem="Q1"]
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>

SELECT ?label ?comment ?producer ?productFeature ?propertyTextual1 ?propertyTextual2 ?propertyTextual3
 ?propertyNumeric1 ?propertyNumeric2 ?propertyTextual4 ?propertyTextual5 ?propertyNumeric4
WHERE {
	
	?x a bsbm:Product .
	?x bsbm:productId ?id .
	FILTER (?id < 1000)
    ?x rdfs:label ?label .
	?x rdfs:comment ?comment .
	?x bsbm:producer ?p .
	?p rdfs:label ?producer .
    ?x dc:publisher ?p .
	?x bsbm:productFeature ?f .
	?f rdfs:label ?productFeature .
	?x bsbm:productPropertyTextual1 ?propertyTextual1 .
	?x bsbm:productPropertyTextual2 ?propertyTextual2 .
    ?x bsbm:productPropertyTextual3 ?propertyTextual3 .
	?x bsbm:productPropertyNumeric1 ?propertyNumeric1 .
	?x bsbm:productPropertyNumeric2 ?propertyNumeric2 .
 OPTIONAL { ?x bsbm:productPropertyTextual4 ?propertyTextual4 }
 OPTIONAL { ?x bsbm:productPropertyTextual5 ?propertyTextual5 }
 OPTIONAL { ?x bsbm:productPropertyNumeric4 ?propertyNumeric4 }
}

[QueryItem="Q2"]
PREFIX : <http://obda.inf.unibz.it/ontop/benchmark/bsbm.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX iso3166: <http://downlode.org/rdf/iso-3166/countries#>
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?product ?label
WHERE {
  ?product rdfs:label ?label .
  # ?product bsbm:type bsbm-inst:ProductType24 .
  ?product bsbm:productFeature bsbm-inst:ProductFeature78 .
  ?product bsbm:productPropertyNumeric1 ?p1 .
  FILTER ( ?p1 > 500 )
  ?product bsbm:productPropertyNumeric3 ?p3 .
  FILTER (?p3 < 1000 )
  OPTIONAL {
    ?product bsbm:productFeature bsbm-inst:ProductFeature1 .
    ?product rdfs:label ?testVar .
  }
  FILTER (!bound(?testVar))
}

[QueryItem="Q3"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>


SELECT ?productLabel ?offer ?price ?vendor ?vendorTitle ?review ?revTitle
 ?reviewer ?revName ?rating1 ?rating2
WHERE {
	?x bsbm:productId ?id .
	FILTER (?id < 1000)
	?x rdfs:label ?productLabel .
 OPTIONAL {
	?offer bsbm:product ?x .
	?offer bsbm:price ?price .
	?offer bsbm:vendor ?vendor .
	?vendor rdfs:label ?vendorTitle .
    ?vendor bsbm:country <http://downlode.org/rdf/iso-3166/countries#DE> .
    ?offer dc:publisher ?vendor .
    ?offer bsbm:validTo ?date .
    FILTER (?date > '1985-01-01'^^xsd:date )
 }
 OPTIONAL {
	?review bsbm:reviewFor ?x .
	?review rev:reviewer ?reviewer .
	?reviewer foaf:name ?revName .
	?review dc:title ?revTitle .
   OPTIONAL { ?review bsbm:rating1 ?rating1 . }
   OPTIONAL { ?review bsbm:rating2 ?rating2 . }
 }
}

[QueryItem="Q4"]
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>


SELECT ?title ?text ?reviewDate ?reviewer ?reviewerName ?rating1 ?rating2 ?rating3 ?rating4
WHERE {
	?x bsbm:productId ?id .
	FILTER (?id < 1000)
	?review bsbm:reviewFor ?x .
	?review dc:title ?title .
	?review rev:text ?text .
	FILTER langMatches( lang(?text), "EN" )
	?review bsbm:reviewDate ?reviewDate .
	?review rev:reviewer ?reviewer .
	?reviewer foaf:name ?reviewerName .
	OPTIONAL { ?review bsbm:rating1 ?rating1 . }
	OPTIONAL { ?review bsbm:rating2 ?rating2 . }
	OPTIONAL { ?review bsbm:rating3 ?rating3 . }
	OPTIONAL { ?review bsbm:rating4 ?rating4 . }
}

[QueryItem="Q5"]
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>


SELECT ?review ?rating
WHERE {
	?review a bsbm:Review .
	OPTIONAL { ?review bsbm:rating1 ?rating . }
	OPTIONAL { ?review bsbm:rating2 ?rating . }
}

[QueryItem="Q6"]
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>


SELECT ?review ?rating
WHERE {
	?review a bsbm:Review .	
	?x bsbm:productId ?id .
	FILTER (?id < 1000)
	?review bsbm:reviewFor ?x .
	
	OPTIONAL { ?review bsbm:rating1 ?rating . }
	OPTIONAL { ?review bsbm:rating2 ?rating . }
	OPTIONAL { ?review bsbm:rating3 ?rating . }
}

[QueryItem="Q7"]
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm-inst-product: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product>


SELECT ?review ?rating
WHERE {
	?review a bsbm:Review .	
	?x bsbm:productId ?id .
	FILTER (?id < 1000)
	?review bsbm:reviewFor ?x .
	
	OPTIONAL { ?review bsbm:rating1 ?rating . }
	OPTIONAL { ?review bsbm:rating2 ?rating . }
	OPTIONAL { ?review bsbm:rating3 ?rating . }
	OPTIONAL { ?review bsbm:rating4 ?rating . }
}

[QueryItem="Q8"]
PREFIX : <http://obda.inf.unibz.it/ontop/benchmark/bsbm.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX iso3166: <http://downlode.org/rdf/iso-3166/countries#>
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?pid ?review_text ?lang
 {
	?product a bsbm:Product .
	?product bsbm:productId ?pid .
 	FILTER (?id < 1000)
	
    OPTIONAL {
	  ?review bsbm:reviewFor ?product .
          ?review rev:text ?review_text .
	  FILTER (LANG(?review_text) = 'en')
  	  BIND ("en" AS ?lang) .
    }
    OPTIONAL {
	  ?review bsbm:reviewFor ?product .
      ?review rev:text ?review_text .
	  FILTER (LANG(?review_text) = 'zh')
  	  BIND ("zh" AS ?lang) .
    }
	FILTER (Bound(?review))	
}

[QueryItem="Q9"]
PREFIX : <http://obda.inf.unibz.it/ontop/benchmark/bsbm.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX iso3166: <http://downlode.org/rdf/iso-3166/countries#>
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?pid ?review_text ?lang
 {
	?product a bsbm:Product .
	?product bsbm:productId ?pid .
 	FILTER (?id < 1000)	
	 
 	?product a bsbm:Product .
     OPTIONAL {
 	  ?review bsbm:reviewFor ?product .
           ?review rev:text ?review_text .
 	  FILTER (LANG(?review_text) = 'en')
   	  BIND ("en" AS ?lang) .
     }
     OPTIONAL {
 	  ?review bsbm:reviewFor ?product .
       ?review rev:text ?review_text .
 	  FILTER (LANG(?review_text) = 'zh')
   	  BIND ("zh" AS ?lang) .
     }
     OPTIONAL {
 	  ?review bsbm:reviewFor ?product .
       ?review rev:text ?review_text .
 	  FILTER (LANG(?review_text) = 'de')
   	  BIND ("de" AS ?lang) .
     }
 	FILTER (Bound(?review))
}

[QueryItem="Q10"]
PREFIX : <http://obda.inf.unibz.it/ontop/benchmark/bsbm.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX iso3166: <http://downlode.org/rdf/iso-3166/countries#>
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?pid ?review_text ?lang
 {
	?product a bsbm:Product .
	?product bsbm:productId ?pid .
 	FILTER (?id < 1000)
	
    OPTIONAL {
	  ?review bsbm:reviewFor ?product .
          ?review rev:text ?review_text.
	  FILTER (LANG(?review_text) = 'en')
  	  BIND ("en" AS ?lang) .
    }
    OPTIONAL {
	  ?review bsbm:reviewFor ?product .
      ?review rev:text ?review_text.
	  FILTER (LANG(?review_text) = 'zh')
  	  BIND ("zh" AS ?lang) .
    }
    OPTIONAL {
    	  ?review bsbm:reviewFor ?product .
          ?review rev:text ?review_text.
    	  FILTER (LANG(?review_text) = 'de')
      	  BIND ("de" AS ?lang) .
    }
    OPTIONAL {
       	  ?review bsbm:reviewFor ?product .
          ?review rev:text ?review_text.
          FILTER (LANG(?review_text) = 'fr')
          BIND ("fr" AS ?lang) .
    }
	FILTER (Bound(?review))
}

[QueryItem="Q11"]
PREFIX : <http://obda.inf.unibz.it/ontop/benchmark/bsbm.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX iso3166: <http://downlode.org/rdf/iso-3166/countries#>
PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?rn ?pn ?text ?homepage
WHERE {
   ?r rev:reviewer ?rr .
   ?rr foaf:name ?name .
   ?r bsbm:reviewFor ?product .
   ?product rdfs:label ?pn .
   ?product bsbm:productId ?pid .
   FILTER (?id < 1000)
   OPTIONAL {
     ?product bsbm:producer ?pr .
     ?pr bsbm:country ?c .
     ?rr bsbm:country ?c .
     ?pr foaf:homepage ?homepage .
   }
   OPTIONAL {
     ?o bsbm:product ?product .
     ?o bsbsm:vendor ?v .
     ?v bsbm:country ?c .
     ?rr bsbm:country ?c .
     ?v foaf:homepage ?homepage .
   }
}
