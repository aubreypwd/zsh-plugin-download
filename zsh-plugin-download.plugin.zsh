#!/bin/zsh

if [[ $(command -v antigen) ]]; then
	antigen bundle aubreypwd/zsh-plugin-require@1.0.1
	antigen apply

	require "aria2c" "brew reinstall aria2" "brew" # Automatically install aria2 using homebrew.
fi

if ! [[ -x $(command -v aria2c) ]]; then >&2 echo "Please install aria2 to use download." && return; fi
if ! [[ -x $(command -v open) ]]; then >&2 echo "download is for macOS only." && return; fi

###
 # Wrapper or aria2c
 #
 # E.g: download ["http://..."] [How many connections]
 #
 # @since Tuesday, May 21, 2019
 # @since 1.0.0
 ##
function download {
	if [[ "" = "$1" ]]; then
		echo "Please supply a URL."
		return
	fi

	local connections="$2"

	if [ ""="$2" ]; then
		local connections="16"
	fi

	aria2c -x "$connections" "$1" && open ./
}
