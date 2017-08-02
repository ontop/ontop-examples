#! /bin/sh

# Single file to run all systems over all datasets, with all arguments hard-coded.
# Alternatively, use run.sh for a specific system/dataset/set of arguments.

numberOfRuns=1

#virtuosoEndPoint="http://obdalin.inf.unibz.it:8890/sparql"
virtuosoEndPoint="http://localhost:8890/sparql"

virtuosoExec="virtuoso/virtuoso-1.0-SNAPSHOT-jar-with-dependencies.jar"
ontopMongoExec="ontop-mongo/ontop-mongo-benchmark-1.0-SNAPSHOT.jar"
drillExec="drill/drill-sql-runner-all-1.0-SNAPSHOT.jar"
morphExec=""

wd=`dirname $0`

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
#queryTimeOut:$13
#runVirtuoso:$14
#runOntopMongo:$15
#runDrill:$16
#runMorph:$17
runDataset (){

	#Run Virtuoso 
	if [ "$14" = true ]; then
		$wd/run.sh -v -g $7 -u $virtuosoEndPoint $virtuosoExec $1 $3 $numberOfRuns
	fi
		
	#Run Ontop-mongo
	if [ "$15" = true ]; then
		options="-n -a $9 -p $10 -i $13" 
		if [ "$11" != noFile ]; then
			options="$options -c $11"  		
		fi
		if [ "$12" != noFile ]; then
			options="$options -t $12"  		
		fi
		command="$wd/run.sh $options $ontopMongoExec $1 $6 $numberOfRuns"
		eval "$command"
	fi

	#Run Drill
	if [ "$16" = true ]; then
		$wd/run.sh -d $drillExec $2 $5 $numberOfRuns
	fi	
		
	#Run Morph	

}


runAwards (){
command="runDataset"  
#sparqlQueriesDir
command="$command $wd/data/awards/queries/sparql"
#drillQueriesDir
command="$command $wd/data/awards/queries/drill"
#virtuosoOutputDir
command="$command $wd/data/awards/eval/virtuoso"
#morphOutputDir
command="$command $wd/data/awards/eval/morph"
#drillOutputDir
command="$command $wd/data/awards/eval/drill"
#ontopMongoOutputDir
command="$command $wd/data/awards/eval/ontop-mongo"
#virtuosoGraph
command="$command http://awards.org"
#morphMappingFile
command="$command $wd/data/awards/mapping/morph/awards-mapping.ttl"
#ontopMongoMappingFile
command="$command $wd/data/awards/mapping/ontop-mongo/mapping.json"
#ontopMongoPropertyFile
command="$command $wd/data/awards/properties"
#ontopMongoConstraintFile
command="$command noFile"
#ontopMongoOntologyFile
command="$command $wd/data/awards/awards.ttl"
#queryTimeOut
command="$command 500"
#runVirtuoso
command="$command false" 
#runOntopMongo
command="$command true"
#runDrill
command="$command false"
#runMorph
command="$command false"

eval "$command"
}

runDBLPAuthors (){
command="runDataset"  
#sparqlQueriesDir
command="$command $wd/data/dblp/queries/sparql"
#drillQueriesDir
command="$command $wd/data/dblp/queries/drill/authors"
#virtuosoOutputDir
command="$command $wd/data/dblp/authors/eval/virtuoso"
#morphOutputDir
command="$command $wd/data/dblp/authors/eval/morph"
#drillOutputDir
command="$command $wd/data/dblp/authors/eval/drill"
#ontopMongoOutputDir
command="$command $wd/data/dblp/authors/eval/ontop-mongo"
#virtuosoGraph
command="$command http://dblp.org"
#morphMappingFile
command="$command $wd/data/dblp/authors/mapping/morph/dblp-mapping-aithors.ttl"
#ontopMongoMappingFile
command="$command $wd/data/dblp/authors/mapping/ontop-mongo/mapping.json"
#ontopMongoPropertyFile
command="$command $wd/data/dblp/authors/properties"
#ontopMongoConstraintFile
command="$command $wd/data/dblp/authors/constraints.json"
#ontopMongoOntologyFile
command="$command noFile"
#queryTimeOut
command="$command 500"
#runVirtuoso
command="$command false" 
#runOntopMongo
command="$command true"
#runDrill
command="$command false"
#runMorph
command="$command false"

eval "$command"
}

runDBLPPublications (){
command="runDataset"  
#sparqlQueriesDir
command="$command $wd/data/dblp/queries/sparql"
#drillQueriesDir
command="$command $wd/data/dblp/queries/drill/publications"
#virtuosoOutputDir
command="$command $wd/data/dblp/publications/eval/virtuoso"
#morphOutputDir
command="$command $wd/data/dblp/publications/eval/morph"
#drillOutputDir
command="$command $wd/data/dblp/publications/eval/drill"
#ontopMongoOutputDir
command="$command $wd/data/dblp/publications/eval/ontop-mongo"
#virtuosoGraph
command="$command http://dblp.org"
#morphMappingFile
command="$command $wd/data/dblp/publications/mapping/morph/dblp-mapping-publications.ttl"
#ontopMongoMappingFile
command="$command $wd/data/dblp/publications/mapping/ontop-mongo/mapping.json"
#ontopMongoPropertyFile
command="$command $wd/data/dblp/publications/properties"
#ontopMongoConstraintFile
command="$wd/data/dblp/publications/constraints.json"
#ontopMongoOntologyFile
command="$command noFile"
#queryTimeOut
command="$command 500"
#runVirtuoso
command="$command false" 
#runOntopMongo
command="$command true"
#runDrill
command="$command false"
#runMorph
command="$command false"

eval "$command"
}

runDBLPAP (){
command="runDataset"  
#sparqlQueriesDir
command="$command $wd/data/dblp/queries/sparql"
#drillQueriesDir
command="$command $wd/data/dblp/queries/drill/authors-publications"
#virtuosoOutputDir
command="$command $wd/data/dblp/authors-publications/eval/virtuoso"
#morphOutputDir
command="$command $wd/data/dblp/authors-publications/eval/morph"
#drillOutputDir
command="$command $wd/data/dblp/authors-publications/eval/drill"
#ontopMongoOutputDir
command="$command $wd/data/dblp/authors-publications/eval/ontop-mongo"
#virtuosoGraph
command="$command http://dblp.org"
#morphMappingFile
command="$command $wd/data/dblp/authors-publications/mapping/morph/dblp-mapping-authors-publications.ttl"
#ontopMongoMappingFile
command="$command $wd/data/dblp/authors-publications/mapping/ontop-mongo/mapping.json"
#ontopMongoPropertyFile
command="$command $wd/data/dblp/authors-publications/properties"
#ontopMongoConstraintFile
command="$wd/data/dblp/authors-publications/constraints.json"
#ontopMongoOntologyFile
command="$command noFile"
#queryTimeOut
command="$command 500"
#runVirtuoso
command="$command false" 
#runOntopMongo
command="$command true"
#runDrill
command="$command false"
#runMorph
command="$command false"

eval "$command"
}

runDBLP (){
	runDBLPAuthors
	runDBLPPublications
	runDBLPAP
}

runBSBM (){

size=$1

command="runDataset"  
#sparqlQueriesDir
command="$command $wd/data/bsbm/queries/sparql"
#drillQueriesDir
command="$command $wd/data/bsbm/queries/drill"
#virtuosoOutputDir
command="$command $wd/data/bsbm/eval/virtuoso"
#morphOutputDir
command="$command $wd/data/bsbm/eval/morph"
#drillOutputDir
command="$command $wd/data/bsbm/eval/drill"
#ontopMongoOutputDir
command="$command $wd/data/bsbm/eval/ontop-mongo"
#virtuosoGraph
command="$command http://bsbm$size.org"
#morphMappingFile
command="$command $wd/data/bsbm/mapping/morph/bsbm-mapping.ttl"
#ontopMongoMappingFile
command="$command $wd/data/bsbm/mapping/ontop-mongo/mapping.json"
#ontopMongoPropertyFile
command="$command $wd/data/bsbm/properties-$size"
#ontopMongoConstraintFile
command="$command $wd/data/bsbm/constraints.json"
#ontopMongoOntologyFile
command="$command noFile"
#queryTimeOut
command="$command 500"
#runVirtuoso
command="$command false" 
#runOntopMongo
command="$command true"
#runDrill
command="$command false"
#runMorph
command="$command false"
echo $command
eval "$command"
}

runDBLP () {
	runDBLPAuthors
	runDBLPPublications
	runDBLPAP
}

runAllBSBM () {
	runBSBM 10000 
	runBSBM 100000 
	runBSBM 1000000 
}	

runBSBM 10000
#runAwards
#runDBLP
#runAllBSBM

# EOF
