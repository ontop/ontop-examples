Supplementary materials for the JOWS 2021 submission "Towards the Next Generation of the LinkedGeoData Project using Virtual Knowledge Graphs"
--------------------------------------------------------------------------------------------------

This repository contains the supplemental materials for the JOWS 2021 paper.

The LinkedGeoData project, develop branch, can be used to set up the required environment.
https://github.com/GeoKnow/LinkedGeoData/tree/develop
Additionally, here we provide and spotlight:

- The [Ontop OBDA Specification](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/lgd-ontop-web/lgd.obda) (including ontologies, mapping in Ontop format)
- The [LinkedGeoData ontology](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/lgd-ontop-web/lgd.owl) (owl)
- The [Sparqlify Query Profile File](sparqlify%20profile%20files)
- The [SPARQL queries](SPARQL%20queries), via Sparqlify and via Ontop
- The [Translated SQL queries](translated%20SQL%20queries), via Sparqlify and via Ontop

The data used in the paper is retrieved from [Geofabrik](http://download.geofabrik.de/) and loaded via LinkedGeoData
- [North-East Italy](http://download.geofabrik.de/europe/italy/nord-est-latest.osm.pbf)
- [Italy](http://download.geofabrik.de/europe/italy-latest.osm.pbf)
- [Germany](http://download.geofabrik.de/europe/germany-latest.osm.pbf)

In order to run SPARQL via Ontop and Sparqlify with Docker:
```
$ git clone https://github.com/GeoKnow/LinkedGeoData.git lgd
$ cd lgd
$ git checkout develop
$ cd linkedgeodata-docker
$ cp env.dist .env
$ make create-resources
$ make
$ cd lgd-nominatim-sync
$ make
$ cd ..
$ cd lgd-nominatim-web
$ cd ..
$ docker-compose up
```
Services should start up under these urls / ports:  
**SPARQL via Sparqlify Endpoint**: http://localhost:8013/sparql  
**SPARQL via Ontop Endpoint**: http://localhost:8014/

The above set-up works with the Monaco dataset, in order to test with 
NorthEast Italy, Italy and Germany, replace the URL in the configuration
file for environment constant [env.dist](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/env.dist) 
(and respective .env file). 

[//]: # (TODO: Restate the steps to install LGD debian or just Sparqlify in the case of CLI?)
[//]: # (TODO: Test again Docker for Sparqlify! In case of further issues continue with CLI)
In order to run Sparqlify (CLI)
Navigate
```
$ cd /etc/sparqlify/profiles.d
$ nano example.conf
```
Copy the contents from [sparqlify query profile file](https://github.com/ontop/ontop-examples/blob/master/jows-2021/sparqlify%20profile%20file/lgd_example.conf).
Continue with the respective query:
```
$ cd lgd/LinkedGeoData/linkedgeodata-cli/bin
$ sparqlify tool -P example -Q 'Prefix rdf: ........'
```

## Querying the SPARQL endpoint via Ontop with curl
The query requests to the Ontop Endpoint can also be sent with the following command
```
curl --request POST \
     --url http://localhost:8080/sparql \
     --header 'accept: application/json' \
     --header 'content-type: application/sparql-query' \
     --data 'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>  PREFIX geo: <http://www.opengis.net/ont/geosparql#>  PREFIX geof: <http://www.opengis.net/def/function/geosparql/>  PREFIX uom: <http://www.opengis.net/def/uom/OGC/1.0/>  PREFIX lgdo: <http://linkedgeodata.org/ontology/>  SELECT * WHERE { ?a a lgdo:Bank; geo:hasGeometry/geo:asWKT ?ag ; rdfs:label ?name . FILTER(lang(?name) = "" || lang(?name) = "fr") BIND (geof:distance('POINT(7.4156749 43.7347546)'^^geo:wktLiteral, ?ag, uom:degree) AS ?distance)  FILTER (?distance <= 0.1)}'
```

## Description of the queries
- Query 1: Find OSM entities of a given class within a predefined distance  
  - Example: Find all bars within 100 metres of Point (longitude latitude)
- Query 2: Find OSM entities of a given class within a predefined distance 
  from a given DBpedia location  
  - Example: Find all banks within 100 metres of Bolzano centre http://dbpedia.org/resource/Monaco
- Query 3: Find OSM entities of a given class that intersectwith a given polygon  
  - Example: Find all restaurants within polygon
- Query 4: Find OSM entities of two given linestring classes that intersect  
  - Example: Find all motorways and rivers that intersect in database
- Query 5: Find OSM entities of a given class within a given polygon
- Query 6: Find OSM entities of a given class that are contained in a given polygon
- Query 7: Find OSM entities of a given class within a 500 metre buffer of a given location
