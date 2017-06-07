#! /bin/sh

USAGE="Usage: `basename $0` [-dhmnv] [-c constraintsFile] [-g graph uri] [-p propertyFile] [-t ontologyFile] [-u source url] exe qDir oDir numberOfRuns

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
  -u			  	source Url (mandatory for all systems but ontop-mongo)


Arguments:

  exe			  	executable
  qDir				queries directory
  oDir				output directory
  numberOfRuns		integer 
"




# Parse command line options.
while getopts a:c:dg:hmn:p:t:uv OPT; do
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
            ;;
        u)
            sourceURL=$OPTARG
            ;;
        p)
            propertyFile=$OPTARG
            ;;
        t)
            ontologyFile=$OPTARG
            ;;
        g)
            graphURI=$OPTARG
            ;;
        a)
            mappingFile=$OPTARG
            ;;
        \?)
            # getopts issues an error message
            echo "unknown option" >&2
            echo "$USAGE" >&2
            exit 1
            ;;
    esac
done

# Remove the switches
shift `expr $OPTIND - 1`

# Non-option arguments
if [[ $# -ne 4 ]]; then
    echo "Invalid number of arguments">&2
	echo $@
    echo "$USAGE" >&2
    exit 1
fi

executable=$1
queriesDir=$2
outputDir=$3
numberOfRuns=$4

case "$system" in
        drill)
            echo "TODO: implement"
            exit 0
            ;;
        morph)
            echo "TODO: implement"
            exit 0
            ;;
		ontop-mongo)
			#jar
			#args: [-o owlFile] [-c constraintsFile] queriesDir outputFile propertyFile mappingFile numberOfruns  
			outputFile="${outputDir}/output.tsv"
			options="" 
			if[[$ontologyFile]]; then
				options=" -o $ontologyFile"  		
			fi	
			if[[$constraintsFile]]; then
				options=" -c $constraintsFile"  		
			fi	
			command="java -jar $options $executable $queriesDir $outputFile $propertyFile $mappingFile $numberOfRuns"
			eval "$command"
			exit 0
			;;
		virtuoso)
			#jar
			#args: queriesDir outputFile endPoinrURL graphURI numberOfruns 
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
