#!/bin/bash

# Path to the src directory
SRC_DIR="./src"

# Loop through all immediate subdirectories under src
for project_dir in "$SRC_DIR"/*/; do
    if [ -d "$project_dir" ]; then
        echo "Processing project: $project_dir"
        
        # Run the conversion script for each subdirectory
        ./run_conversion.sh "$project_dir"
        
        # Check if the conversion was successful
        if [ $? -eq 0 ]; then
            echo "Conversion successful for $project_dir"
        else
            echo "Conversion failed for $project_dir"
        fi
        
        echo "-----------------------------"
    fi
done