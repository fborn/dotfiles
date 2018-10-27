#!/usr/bin/env bash

source "$(dirname "$0")/bash_env"

if [ ! -d $GOPATH ] ; then
    echo "  Creating an empty go directory in $GOPATH"
    mkdir $GOPATH
fi

