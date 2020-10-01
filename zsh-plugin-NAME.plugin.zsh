#!/bin/zsh

if [[ -x $(command -v brew) ]] && [[ ! -x $(command -v <brewcommand>) ]]; then
	brew reinstall <brewcommand>
fi

if ! [[ -x $(command -v <brewcommand>) ]]; then
	echo "Please install <brewcommand>:";
	echo "\tHomebrew: brew install <brewcommand>"
fi

###
 # NAME
 #
 # @since 1.0.0
 ##
