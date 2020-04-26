#!/bin/bash

### Run tests

runTests() {
	# TODO >>> RUN YOUR TESTS HERE
}

### Watch for changes

watch() {

    echo "Watching folder '$1' every $2 secondss."

	while [[ true ]]
	do
	    files=`find $1 -type f -mtime -$2s`

	    if [[ $files != "" ]] ; then
	        onChanges $files
	    else
	    	onNoChange
	    fi

	    sleep $2

	done
}

onChanges() {
	#echo Changed, $1
	runTests
}

onNoChange() {
	#echo "Nothing changed."
	return
}

### Main

folder='.'
everySeconds='2'

watch $folder $everySeconds
