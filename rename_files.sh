#!/bin/bash

# Specify the directory containing the files
directory="original-files"

# Loop through each file in the directory
for filename in "$directory"/*; do
    # Check if the file exists and is a regular file (not a directory)
    if [ -f "$filename" ]; then
        # Get the lowercase version of the filename
        new_filename=$(basename "$filename" | tr '[:upper:]' '[:lower:]')
        # Replace spaces with dashes
        new_filename=$(echo "$new_filename" | tr ' ' '-')
        # Rename the file
        mv "$filename" "renamed-files/$new_filename"
        echo "Renamed \"$filename\" to \"$new_filename\""
    fi
done