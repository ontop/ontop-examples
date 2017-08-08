#! /bin/sh

# Runs one of ontop-mongo, drill, morph or virtuoso, in the conditions used for the ISWC 2017 mongo submission.

USAGE="Usage: `basename $0` [-dhmnv] [-a mappingFile] [-c constraintsFile] [-g graph uri] [-p propertyFile] [-t ontologyFile] [-u source url] [-i queryTimeOut] exe qDir oDir numberOfRuns

Options:
  -d			  	run Drill
  -h			  	display this Help 
  -m			  	run Morph
  -n			  	run oNtop-mongo 
  -v			  	run Virtuoso 

  -a				mApping file (for ontop-mongo and morph)
  -c			  	constraints JSON file (for ontop-mongo)
  -g			  	queried graph uri (mandatory for virtuoso)
  -p			  	properties JSON file (mandatory for ontop-mongo)
  -t			  	onTology file (for ontop-mongo)
  -u			  	source Url (mandatory for virtuoso)
  -i			  	query tImeOut (mandatory for ontop-mongo)


Arguments:

  exe			  	executable
  qDir				queries directory
  oDir				output directory
  numberOfRuns		integer
  queryTimeOut		integer
"

ontologyFilePresent=false
constraintsFilePresent=false

# Parse command line options
while getopts a:c:dg:hi:mnp:t:u:v OPT; do
    case "$OPT" in
        h)
            echo "$USAGE"
            exit 0
            ;;
        d)
            system="drill"
            ;;
        m)
            system="morph"
            ;;
        n)
            system="ontop-mongo"
            ;;
        v)
            system="virtuoso"
            ;;
        c)
            constraintsFile=$OPTARG
			constraintsFilePresent=true
            ;;
        u)
            sourceURL=$OPTARG
            ;;
        p)
            propertyFile=$OPTARG
            ;;
        t)
            ontologyFile=$OPTARG
			ontologyFilePresent=true
            ;;
        g)
            graphURI=$OPTARG
            ;;
        a)
            mappingFile=$OPTARG
            ;;
        i)
            queryTimeOut=$OPTARG
            ;;
        \?)
            echo "unknown option" >&2
            echo "$USAGE" >&2
            exit 1
            ;;
    esac
done



# Remove switches
shift `expr $OPTIND - 1`

# Non-option arguments
if [ $# -ne 4 ]; then
    echo "Invalid number of arguments: $#">&2
	echo $@
    echo "$USAGE" >&2
    exit 1
fi

executable=$1
queriesDir=$2
outputDir=$3
numberOfRuns=$4
queryTimeOut=$4

case "$system" in
        drill)
			if [ ! -e $outputDir ]; then  
				mkdir $outputDir	
			fi
			for file in $queriesDir/*.sql
			do
				echo "$file"
				outputFile=$outputDir/$(basename "$file").out
				timeout 5000 java -jar $executable $file > $outputFile
			done
            exit 0
            ;;

        morph)
            echo "TODO: implement"
            exit 0
            ;;

		ontop-mongo)
			#jar
			#args: [-t owlFile] [-c constraintsFile] queriesDir outputFile propertyFile mappingFile numberOfruns queryTimeout 
			outputFile="${outputDir}/output.tsv"
			options="" 
			if [ "$ontologyFilePresent" = true ]; then
				options=" -t $ontologyFile"  		
			fi	
			if [ "$constraintsFilePresent" = true ]; then
				options=" -c $constraintsFile"  		
			fi		
			command="java -jar $executable $options $queriesDir $outputFile $propertyFile $mappingFile $numberOfRuns $queryTimeOut"
			echo $command
			eval "$command"
			exit 0
			;;

		virtuoso)
			#jar
			#args: queriesDir outputFile endPointURL graphURI numberOfruns 
			outputFile="${outputDir}/output.tsv"
			java -jar $executable $queriesDir $outputFile $sourceURL $graphURI $numberOfRuns
			exit 0
			;;

        \?)
            echo "Unknown system" >&2
            echo "$USAGE" >&2
            exit 1
            ;;
esac

# EOF
