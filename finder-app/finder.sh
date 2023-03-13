#!/bin/bash

# check if arguments were specified
if [ $# -lt 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

# extract arguments
filesdir="$1"
searchstr="$2"

# check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

# search for the text string in all files in the directory and its subdirectories
num_files=$(find "$filesdir" -type f | wc -l)
num_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# print results
echo "The number of files are $num_files and the number of matching lines are $num_lines"

