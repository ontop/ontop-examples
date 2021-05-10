Supplementary materials for the JOWS 2021 submission "Towards the Next Generation of the LinkedGeoData Project using Virtual Knowledge Graphs"
--------------------------------------------------------------------------------------------------

This repository contains the supplemental materials for the JOWS 2021 paper.

The LinkedGeoData project, develop branch, can be used to set up the required environment.
https://github.com/GeoKnow/LinkedGeoData/tree/develop
Additionally, here we provide and spotlight:

[//]: # (TODO: Use the link to the specific date rather than latest)
[//]: # (TODO: Add all the files, or keep queries with different location in same file?)
- The [Ontop OBDA Specification](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/lgd-ontop-web/lgd.obda) (including ontologies, mapping in Ontop format)
- The [LinkedGeoData ontology](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/lgd-ontop-web/lgd.owl) (owl)
- The [Sparqlify Query Profile File](sparqlify%20profile%20files)
- The [SPARQL queries](SPARQL%20queries), both Sparqlify and Ontop versions
- The [Translated SQL queries](translated%20SQL%20queries), both Sparqlify and Ontop versions

The data used in the paper is retrieved from [Geofabrik](http://download.geofabrik.de/) and loaded via LinkedGeoData
- [North-East Italy](http://download.geofabrik.de/europe/italy/nord-est-latest.osm.pbf)
- [Italy](http://download.geofabrik.de/europe/italy-latest.osm.pbf)
- [Germany](http://download.geofabrik.de/europe/germany-latest.osm.pbf)


In order to run Ontop and Sparqlify (Docker)
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
**Sparql Endpoint**: http://localhost:8013/  
**Ontop Endpoint**: http://localhost:8014/

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
