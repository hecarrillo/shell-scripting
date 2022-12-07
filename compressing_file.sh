#!/bin/sh #
clear

echo "-------------- Obteniendo fecha ---------------" 
fecha=`date +%Y%m%d%H%M`

echo "-------------- Empacando ----------------"
# tar is used to compress files
# -c is used to create a new archive
# -v is used to show the progress
# -f is used to specify the name of the archive
# arguments are the files to be compressed 
tar -cvf ./respaldo$fecha.tar ./dirs_to_compress/dir1 ./dirs_to_compress/dir2 ./dirs_to_compress/dir3 
echo "-------------- Compressing ----------------"
# bzip2 is used to compress files
bzip2 ./respaldo$fecha.tar

echo "-------------- Copying --------------" 
cp ./respaldo$fecha.tar.bz2 ./compressed_tar_files

echo "-------------- Decompressing ------------------" 
# bunzip2 is used to decompress files
# arguments are the files to be decompressed
# The decompressed files are saved in the same directory as the compressed files unless a different directory is specified with the -d option
# -d is used to specify the directory where the decompressed files will be saved

bunzip2 ./compressed_tar_files/respaldo$fecha.tar.bz2

echo "-------------- Desempacando ----------------"
# tar is used to decompress files
# -x is used to extract files from an archive
# -v is used to show the progress
# -f is used to specify the name of the archive

tar -xvf ./compressed_tar_files/respaldo$fecha.tar -C ./decompressed_files
echo "-------------- Limpiando ------------------"
# rm is used to delete files
# -f is used to force the deletion

rm -f ./respaldo$fecha.tar.bz2
rm -f ./respaldo$fechar.tar
#
echo "-------------- Terminado ------------------"