#!/usr/bin/env bash

echo "Tutorial 1. filter the directory hierarchy based on a file’s name"
echo "-----------------find-------------------"
echo "Syntax: find (options) starting/path expression"

echo "#1 Find a file called testfile.txt in current and sub-directories."
find . -name report.txt

echo "#2 Find all .txt files in the /home and sub-directories."
find ~/ -name "*.txt"

echo "#3 Find an empty file within the current directory"
find . -type f -empty

echo "#4 Find all .txt files (ignoring text case) modified in the last 7 days by a user named willi."
find ~ -iname "*.txt" -mtime -7 -user willi

echo "#5 Try to figure out what this mean: "
find . -type f -exec grep "example" '{}' \; -print

echo "#6 Be careful!!!Add the option -delete to the end of a match expression to delete all files that match."
find . -name "*.del" -delete

echo "Tutorial 2. search based on the content of the file"
echo "-----------------grep-------------------"
echo "#1 Grep all contents that contain 'find' (ignore case) in the current folder"
grep -i -r "find" .

echo "#2 Of course, you can search for the word 'find' in a length file"
grep find search.sh

echo "#3 Search for the word 'find' in a length file without echo"
grep find search.sh | grep -v echo

echo "#4 filter a length output from the previous output"
ls /usr/lib | grep "ssh"

echo "#5 what processes do docker run?"
ps aux | grep docker

echo "#6 let us checkout the command history and find out how did we use bash"
history | grep "bash"