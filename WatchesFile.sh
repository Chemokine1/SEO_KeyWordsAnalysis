#!/bin/bash

# Directory containing CSV files
csv_dir="$HOME/Documents/linux/Watches/csvfile"

# Path to your R script
r_script="$HOME/Documents/linux/Watches/CSVreader.R"

# Loop through each CSV file in the directory
for csv_file in "$csv_dir"/*.csv; do
    echo "Processing $csv_file"
    eval Rscript "$r_script" "$csv_file"
done





