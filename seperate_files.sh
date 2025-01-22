#!/bin/bash
#Seperate the files with odd and even index
mkdir -p electron_scattering_data/odd
mkdir -p electron_scattering_data/even

for file in electron_scattering_data/*; do
    filename=$(basename "$file")
    index=$(echo "$filename" | grep -oP '\d+(?=\.bin)')
    
    if [ $((index % 2)) -eq 0 ]; then
        mv "$file" electron_scattering_data/even/
    else
        mv "$file" electron_scattering_data/odd/
    fi
done

