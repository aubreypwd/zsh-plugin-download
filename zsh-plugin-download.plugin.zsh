#!/bin/zsh

if [[ $(command -v antigen) ]]; then
	antigen bundle aubreypwd/zsh-plugin-require@1.0.1
	antigen apply

	require "aria2c" "brew reinstall aria2" "brew"
fi

if ! [[ -x $(command -v aria2c) ]]; then
	echo "Please install aria2 to use download."
	return;
fi

###
 # Wrapper or aria2c
 #
 # E.g: download ["http://..."] [How many connections]
 #
 # @since Tuesday, May 21, 2019
 # @since 1.0.0
 ##
function download {
	if [ ""="$2" ]; then
		connections="16"
	else
		connections="$2"
	fi

	aria2c -x "$connections" "$1" && open ./
}
