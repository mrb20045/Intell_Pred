#!/bin/bash

dir=$(echo "${0%/*}")


echo "_______________________"
echo "Extracting the zip file "
echo "_______________________"
echo

tar -xvf $dir/Files.tar


rm  $dir/Files.tar

cd $dir/Scripts/libsvm-3.22


echo
echo "___________________"
echo "libSVM compilling"
echo "___________________"
echo
make clean  &> /dev/null
make        &> /dev/null
echo



echo "_______________________"
echo "Transdecoder installing"
echo "_______________________"
echo
cd $dir/Scripts/TransDecoder-3.0.1
make clean &> /dev/null
make       &> /dev/null

cd ..




chmod 777 $dir/Intell_Pred

chmod 777 -R  $dir/Scripts   $dir/Scripts/TransDecoder-3.0.1  $dir/Scripts/libsvm-3.22

echo
