#!/bin/bash

SRC_DIR="$1"

set +x

if [ -z "$SRC_DIR" ]; then
echo "usage: ./git-puller.sh <SRC_DIR>"
exit 1
fi

SRC_DIR=$(realpath $SRC_DIR)
cd $SRC_DIR
pwd
for DIR in $(ls $SRC_DIR); do 
REPO=$(realpath "$DIR")
echo "git pulling \"$REPO\""
cd $REPO
git pull
cd $SRC_DIR
done
