#! /bin/sh

# Single file to run all systems over all datasets, with hard-coded arguments.
# Alternatively, use run.sh for a specific system/dataset/set of arguments.

USAGE="Usage: `basename $0`"

numberOfRuns=2

#virtuosoExec="virtuoso/virtuoso-1.0-SNAPSHOT-jar-with-dependencies.jar"
virtuosoExec="virtuoso/target/virtuoso-1.0-SNAPSHOT-jar-with-dependencies.jar"
#virtuosoEndPoint="http://localhost:8890/sparql"
virtuosoEndPoint="http://obdalin.inf.unibz.it:8890/sparql"

#ontopMongoExec="ontop-mongo/ontop-mongo-benchmark-1.0-SNAPSHOT-jar-with-dependencies.jar"
ontopMongoExec="ontop-mongo-benchmark/target/ontop-mongo-benchmark-1.0-SNAPSHOT-jar-with-dependencies.jar"
morphExec=""
drillExec=""



#sparqlQueriesDir:$1
#drillQueriesDir:$2
#virtuosoOutputDir:$3
#morphOutputDir:$4
#drillOutputDir:$5
#ontopMongoOutputDir:$6
#virtuosoGraph:$7
#morphMappingDir:$8
#ontopMongoMappingFile:$9
#ontopMongoPropertyFile:$10
#ontopMongoConstraintsFile:$11
#ontopMongoOntologyFile:$12

runDataset (){

	#Run Virtuoso 
	#./run.sh -v -g $7 -u $virtuosoEndPoint $virtuosoExec $1 $3 $numberOfRuns

		
	#Run Ontop-mongo
	options="-n -a $9 -p $10" 
	if [ "$11" != noFile ]; then
		options="$options -c $11"  		
	fi
	if [ "$12" != noFile ]; then
		options="$options -o $12"  		
	fi
	command="./run.sh $options $ontopMongoExec $1 $6 $numberOfRuns"
	eval "$command"

	#Run Drill	

	#Run Morph	

}


### Awards  ##
command="runDataset"  
#sparqlQueriesDir
command="$command $(pwd)/data/awards/queries/sparql"
#drillQueriesDir
command="$command $(pwd)/data/awards/queries/drill"
#virtuosoOutputDir
command="$command $(pwd)/data/awards/eval/virtuoso"
#morphOutputDir
command="$command $(pwd)/data/awards/eval/morph"
#drillOutputDir
command="$command $(pwd)/data/awards/eval/drill"
#ontopMongoOutputDir
command="$command $(pwd)/data/awards/eval/ontop-mongo"
#virtuosoGraph
command="$command http://awards.org"
#morphMappingFile
command="$command $(pwd)/data/awards/mapping/morph/awards-mapping.ttl"
#ontopMongoMappingFile
command="$command $(pwd)/data/awards/mapping/ontop-mongo/mapping.json"
##ontopMongoPropertyFile
command="$command $(pwd)/data/awards/properties"
##ontopMongoConstraintFile
command="$command noFile"
##ontopMongoOntologyFile
command="$command noFile"

eval "$command"

# EOF
