#!/bin/bash

if [ ! -f ~/.localrc ];
then
    echo "  Creating an empty ~/.localrc, put super secret stuff here!"
    echo > ~/.localrc
fi
chmod og-r ~/.localrc
