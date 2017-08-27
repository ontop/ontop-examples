#! /bin/bash

# Runs one of ontop-mongo, drill, morph or virtuoso, in the conditions used for the ISWC 2017 mongo submission.

# Output: a single tsv file with format
#	filename1	ms
#	filename2	ms
# ...
# where ms is the averaged execution time over the number or runs

#Specific values for ms:
# -1: out of memory
# -2: timeout 
# -3: unsupported query






USAGE="Usage: `basename $0` [-dhmnv] [-a mappingFile] [-c constraintsFile] [-g graph uri] [-p propertyFile] [-t ontologyFile] [-u source url] [-i queryTimeOut] exe qDir oDir numberOfRuns

Options:
  -d			  	run Drill
  -h			  	display this Help 
  -m			  	run Morph
  -n			  	run oNtop-mongo 
  -v			  	run Virtuoso 

  -a				mApping file (for ontop-mongo)
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


if [ ! -e $outputDir ]; then  
	mkdir -p $outputDir	
fi
outputFile="${outputDir}/output.tsv"
rm -f $outputFile


executeQuery(){
case "$system" in
	drill)
		# capture both stdout and stderr
		output=$(timeout 5000 java -jar $executable $1 2>&1)
		ms=$(echo "$output" | grep "overall time" | cut -d' ' -f 4) 
		if [ "$ms" != "" ] 
		then
			echo $ms
		elif [ $(echo "$output" | grep -c "OutOfMemoryError")  -ne 0 ]
		then	
			echo "-1"
		elif [ $(echo "$output" | grep -c "UNSUPPORTED")  -ne 0 ]
		then	
			echo "-3"
		fi
		exit 0
		;;
	morph)
		# capture both stdout and stderr
		output=$( java -jar $executable --configFile $propertyFile -m $mappingFile -q $1 2>&1)
	    ms=$( echo "$output" | grep "Overall SPARQL query processing time" | awk '{print $13}' | sed -n "s/\([0-9]*\)ms./\1/p" )
		if [ "$ms" != "" ] 
		then
			echo $ms
		elif [ $(echo "$output" | grep -c "OutOfMemoryError")  -ne 0 ]
		then	
			echo "-1"
		fi
		exit 0
		;;
	\?)
		echo "Unexpected system" >&2
		echo "$USAGE" >&2
		exit 1
	;;
esac	
}

executeQueries(){

	declare -A map

	for file in $queriesDir/*
	do
		map[$(basename $file)]=0; 
	done

	for i in $(seq 1 $numberOfRuns)
	do
		echo "Starting run $i ..."
		for file in $queriesDir/*
		do	
			bsn=$(basename $file)
			echo "Executing query $bsn ..."
			res=$(executeQuery $file)
			map[$bsn]=$((${map[$bsn]}+$res))
		done
	done

	for key in "${!map[@]}"
   	do 
		avg=$(echo "scale=2;${map[$key]}/$numberOfRuns" | bc)
		echo -e "$key\t"$avg >> $outputFile
   	done
}




case "$system" in
        drill)
			executeQueries
            exit 0
			;;
        morph)
			executeQueries
            exit 0
            ;;

		ontop-mongo)
			#jar
			#args: [-t owlFile] [-c constraintsFile] queriesDir outputFile propertyFile mappingFile numberOfruns queryTimeout 
			options="" 
			if [ "$ontologyFilePresent" = true ]; then
				options=" -t $ontologyFile"  		
			fi	
			if [ "$constraintsFilePresent" = true ]; then
				options=" -c $constraintsFile"  		
			fi		
			command="java -jar $executable $options $queriesDir $outputFile $propertyFile $mappingFile $numberOfRuns $queryTimeOut"
			echo $command
			eval "$command" 2>&1
			exit 0
			;;

		virtuoso)
			#jar
			#args: queriesDir outputFile endPointURL graphURI numberOfruns 
			java -jar $executable $queriesDir $outputFile $sourceURL $graphURI $numberOfRuns
			exit 0
			;;

        \?)
            echo "Unexpected system" >&2
            echo "$USAGE" >&2
            exit 1
            ;;
esac

# EOF
