SPARQL endpoint deployment
==========================

## Apache Tomcat setup

Procedure: 

1. Unzip the archive with Tomcat *(apache-tomcat-9.0.0.M13.zip)*
2. Start tomcat from the *bin folder* using the commands: 
	* On Mac/Linux: using the terminal run `sh startup.sh` or  `sh catalina.sh start`
	* On Windows: click on the executable `startup.bat` 
3. Connect to Sesame Workbench at http://localhost:8080/openrdf-workbench/
4. You will be automatically redirected to the repositories view.

## Setting up a Quest Virtual RDF Repository using the Sesame Workbench

1. Download [this OWL ontology file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university-complete.ttl).
2. Download [this mapping file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university-complete.obda).

3. Click on *New repository*
  * Select *Quest Virtual RDF Store* from the list.
  * Give an ID to your new repository (e.g. Session1Repo)
  * Give Optionally also a descriptive title (e.g. Universities Repository)
  * Click on *Next*

4. On the next page:
  * Type in the path of the ontology file *university-complete.ttl* using '/' -es (ex: `C:/Users/Me/ekaw-tutorial-2016/session1/university-complete.ttl`)
  * Type in the path of the obda file *university-complete.obda* using '/' -es (ex: `C:/Users/Me/Repo/ekaw-tutorial-2016/session1/university-complete.obda`)
  * Keep the default options
  * Click on *Create*

5. The Summary page contains your newly created repository's SPARQL endpoint URL (as Location):

## Querying 

1. We can query the newly created repository by clicking on the *Query* submenu .
2. We run the previous SPARQL queries, clicking on *Execute*. 

## Exporting 
It is possible to view the entire set of triples by clicking on *Export* in the submenu.
* Exporting is equal to showing all the data in the triple store. 
* Basically it is a general CONSTRUCT query:

<pre>
CONSTRUCT {?s ?p ?o}
WHERE {?s ?p ?o}
</pre>








