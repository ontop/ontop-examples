SPARQL endpoint deployment
==========================

## Apache Tomcat setup

Procedure: 

1. Download and unzip the archive with Tomcat [tomcat-ontop-bundle.zip](https://github.com/ontop/ontop-examples/tree/master/ekaw-tutorial-2016/tomcat-ontop-bundle.zip)
2. Start tomcat from the *bin folder* using the commands: 
	* On Mac/Linux: using the terminal run `sh startup.sh` or  `sh catalina.sh start`.
	* On Windows: click on the executable `startup.bat`.
3. Connect to Sesame Workbench at http://localhost:8080/openrdf-workbench/ .
4. You will be automatically redirected to the repositories view .

## Setting up a Quest Virtual RDF Repository using the Sesame Workbench

1. Download [this OWL ontology file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university-complete.ttl) .
2. Download [this mapping file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university-complete.obda) .

3. Click on *New repository*
  * Select *Quest Virtual RDF Store* from the list.
  * Give an ID to your new repository (ex: Session1Repo).
  * Give optionally also a descriptive title (ex: Universities Repository).
  * Click on *Next*.

4. On the next page:
  * Type in the path of the ontology file *university-complete.ttl* using the separator '/' (ex: `C:/Users/Me/ekaw-tutorial-2016/session1/university-complete.ttl`).
  * Type in the path of the obda file *university-complete.obda* using the separator '/' (ex: `C:/Users/Me/Repo/ekaw-tutorial-2016/session1/university-complete.obda`).
  * Keep the default options.
  * Click on *Create*.

5. The *Summary* page contains your newly created repository's SPARQL endpoint URL (as Location).

## Querying 

1. We can query the newly created repository by clicking on the *Query* submenu .
3. Run the following query clicking on *Execute*:

```sparql
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?prof ?lastName {
  ?prof a :FullProfessor ; foaf:lastName ?lastName .
}
```







