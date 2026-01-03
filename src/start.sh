#!/bin/sh

### Temporary files

tmpconfig="$(mktemp --suffix=.yaml)"
tmpicecastconfig="$(mktemp --suffix=.xml)"

### Functions

# Cleanup function to remove temporary files
cleanup() {
	rm --force "${tmpconfig}" "${tmpicecastconfig}"
}

# Function to fill values in the configuration file
fillconfig() {
	gomplate --file src/config.yaml.tpl --out "${1}"
}

# Function to fill values in the Icecast configuration file
fillicecastconfig() {
	gomplate --file src/icecast.xml.tpl --datasource config="${1}" --out "${2}"
}

# Function to setup ignoring signals
ignoresignals() {
	for signal in INT TERM HUP QUIT; do
		trap '' "${signal}"
	done
}

# Function to start Icecast
starticecast() {
	echo 'Starting Icecast...'

	icecast -c "${1}" &
}

# Function to setup signal handling
handlesignals() {
	for signal in INT TERM HUP QUIT; do
		trap 'kill -'"${signal}"' '"${1}"'; wait '"${1}"'; status=$?; cleanup; exit "${status}"' "${signal}"
	done
}

# Function to wait for Icecast to exit and handle cleanup
waitandcleanup() {
	wait "${1}"
	status=$?

	# Cleanup temporary files
	cleanup

	exit "${status}"
}

### Main script execution

# Fill values in configuration files
fillconfig "${tmpconfig}"
fillicecastconfig "${tmpconfig}" "${tmpicecastconfig}"

# Temporarily ignore signals
ignoresignals

# Start Icecast in the background
starticecast "${tmpicecastconfig}"

# Setup signal handling
pid=$!
handlesignals "${pid}"

# Wait for Icecast to exit
waitandcleanup "${pid}"
