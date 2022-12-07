# Shell script that decompresses all compressed files in the compressed_tar_files directory
# !/bin/bash

# Change to the compressed_tar_files directory
cd compressed_tar_files

# Decompress all files in the compressed_tar_files directory
for file in *.tar
do
    tar -xzf $file
done

# Change to the parent directory
cd ..

# List the contents of the compressed_tar_files directory
ls -l compressed_tar_files

