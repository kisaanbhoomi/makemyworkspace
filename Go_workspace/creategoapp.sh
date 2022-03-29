#!/bin/bash

CREATEAPP=true

while getopts "g:p:" input; do
	case "${input}" in
	g)
		GITHUBUSERNAME=${OPTARG}
		;;
	p)
		PROJECT=${OPTARG}
		;;
	esac
done

usage() { echo "[-g github user name] [-p project name]"; }

if [ -z "$GITHUBUSERNAME" ] || [ -z "$PROJECT" ]; then
	CREATEAPP=false
	usage
fi

if [ "$CREATEAPP" == true ]; then
	cd $HOME && mkdir "${PROJECT}"_WORKSPACE && cd "${PROJECT}"_WORKSPACE && mkdir -p {bin,github.com,pkg} && cd github.com && mkdir "${GITHUBUSERNAME}" && cd "${GITHUBUSERNAME}" && mkdir "${PROJECT}" && cd "${PROJECT}" && mkdir src && touch main.go && go mod init github.com/"${GITHUBUSERNAME}"/"${PROJECT}" && cd src && mkdir -p {controller,middleware,response} && touch server.go
fi
