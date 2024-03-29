#!/bin/zsh

if [[ $(command -v require) ]]; then
	require "aria2c" "brew reinstall aria2" "brew" # Automatically install aria2 using homebrew.
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
	if ! [[ -x $(command -v aria2c) ]]; then >&2 echo "Please install aria2 to use download." && return; fi

	if [[ -z "$1" ]]; then
		echo "Please supply a URL."
		return
	fi

	local connections="$2"

	if [ -z "$2" ]; then
		local connections="16"
	fi

	aria2c -x "$connections" "$1"
}
