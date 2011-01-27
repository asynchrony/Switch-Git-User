#!/bin/bash
developers="matt.simpson amos.king kenny.ortmann lori.cross arumugam.deivanayaga craig.buchek"
declare -A github
github[matt.simpson]='coffeencoke'
github[amos.king]='adkron'
github[kenny.ortmann]='yairgo'
github[craig.buchek]='booch'
REPO=git # Put your git repo here.

function update_gitconfig() {
	REMOTE=$1
	GIT_URL=$2
	USER=$3
	sed -r -i "/remote \"$REMOTE\"/,+2s/(.*)+@$GIT_URL/\turl = https:\/\/$USER@$GIT_URL/" .git/config
}

select USER in $developers; do
	update_gitconfig origin $REPO $USER

	GITHUB_USER=${github[$USER]}
	if [ ! -z "$GITHUB_USER" ]; then
		update_gitconfig github github.com $GITHUB_USER
	fi;

    break
done


