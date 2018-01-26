#!/bin/bash

if [ -z $1 ]
then

  echo "No directory supplied"
  echo "Recursively searching current directory for *.f* files"
  dir=./

else

  dir=$1

fi

  
for file in $(find $dir -type f -name "*.f*");
do

  echo $file
  sed 's/^[[:blank:]]*//;s/[[:blank:]]*$//' < $file > temp.txt
  
  mv temp.txt $1
  fprettify --indent 2 $1

done


