# Script that visualizes the contents of a directory input by the user without using ls 
# !/bin/bash

# Ask the user for the directory to visualize
echo -n "Introduce the directory to visualize: "
read directory

# Change to the directory
cd $directory

# Visualize the contents of the directory
for file in *
do
    echo $file
done


