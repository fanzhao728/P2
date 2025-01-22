#!/bin/bash
# Script to remove all files from the specified directory
if [ -d "$1" ]; then
    rm "$1"/*
    echo "All files in $1 have been deleted."
else
    echo "Directory $1 does not exist."
fi
