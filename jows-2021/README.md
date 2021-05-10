Supplementary materials for the JOWS 2021 submission "Towards the Next Generation of the LinkedGeoData Project using Virtual Knowledge Graphs"
--------------------------------------------------------------------------------------------------

This repository contains the supplemental materials for the JOWS 2021 paper.

The LinkedGeoData project, develop branch, can be used to set up the required environment.
https://github.com/GeoKnow/LinkedGeoData/tree/develop
Additionally, here we provide :

[//]: # (TODO: Use the link to the specific date rather than latest)
[//]: # (TODO: Add all the files, or keep queries with different location in same file?)
- The [Ontop OBDA Specification](https://github.com/GeoKnow/LinkedGeoData/blob/develop/linkedgeodata-docker/lgd-ontop-web/lgd.obda) (including ontologies, mapping in Ontop format)
- The [Sparqlify Query Profile Files](sparqlify%20profile%20files)
- The [SPARQL queries](SPARQL%20queries), both Sparqlify and Ontop versions
- The [Translated SQL queries](translated%20SQL%20queries), both Sparqlify and Ontop versions

The data used in the paper is retrieved from [Geofabrik](http://download.geofabrik.de/) and loaded via LinkedGeoData
- [North-East Italy](http://download.geofabrik.de/europe/italy/nord-est-latest.osm.pbf)
- [Italy](http://download.geofabrik.de/europe/italy-latest.osm.pbf)
- [Germany](http://download.geofabrik.de/europe/germany-latest.osm.pbf)


In order to run Ontop
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

[//]: # (TODO: Restate the steps to install LGD debian or just Sparqlify?)
[//]: # (TODO: Test again Docker for this?)
In order to run Sparqlify
Navigate
```
$ cd /etc/sparqlify/profiles.d
$ nano italy.conf
$ cd lgd/LinkedGeoData/linkedgeodata-cli/bin
$ sparqlify tool -P italy -Q 'Prefix rdf: ........'
```