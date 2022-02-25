#!/bin/bash

# ny -- Redhat/ tools
# Set BASH to quit script and exit on errors
set -e

# echo "$(cat /etc/redhat-release | cut -d ' ' -f 7)"

showPath(){
	echo "$(pwd)"
}

clean(){
	echo "Cleaning up my closet"
}

leave(){
	echo "leaving you out"
	exit
}

ny-help() {

cat << _EOF_
	ny is a tool that automates the update procedure for Debian and ubuntu based linux systems.
	ny = testing current path printing script.
	Running "test" with no options will print the current path directory and also show cleaning. 

	ny --clean = clean the system.

	Adding the "--clean" option will invoke the echo cleaning the system output.

	ny --help = shows this help page. 
	By ny (GNU/General Pblic License version 2.0)
_EOF_

}

# Execution.
# Tell 'em who we are...
echo "NY -- Redhat current path tool (Version 1.0)"

# Show current path and clean:

if [ "$1" == "--clean" ]; then 
	showPath
	clean
	leave
fi

if [ "$1" == "--help" ]; then
	test-help
	exit
fi

# Check for invalid argument

if [ -n "$1" ]; then
	echo "NY Error: Invalid argument. Try 'ny --help' for more info." >&2
	exit 1
fi

showPath
leave
