#!/bin/bash

#Make an array of named UNIX having 5 elements initially.

UNIX=(Debian RedHat Ubuntu Suse Fedora)
#Array Elements Display
echo "Whole array is:" ${UNIX[*]}
#Length of Array
echo "Length of array is:" ${#UNIX[*]}
#Length of string at index 2
echo "Length of Element at index 2 is:" ${#UNIX[2]}
#Extraction of elements from UNIX array
echo "Extraction is:" ${UNIX[@] : 3 : 2}
#Search "UBUNTU" from the UNIX array and replace it with "SCO"
echo "Array after replace :"${UNIX[@]/"Ubuntu"/"SCO"}
#Add element in the UNIX array
UNIX=(${UNIX[@]} "AIX" "HP-UX")
echo "UNIX array After the new elements is added in it:" ${UNIX[*]}
#Removal of 3rd elementin array 
unset UNIX[2]
echo "UNIX array after removal of 3rd element is:" ${UNIX[*]}
#Copy the contents of UNIX array to LINUX array
LINUX=(${UNIX[@]})
echo "LINUX array is:" ${LINUX[*]}
#Concatenate Both arrays and storce it in BASH array
bash=(${UNIX[@]} ${LINUX[@]})
echo "Bash array after concetination is:" ${bash[*]}
#Removal of LINUX and UNIX Arrays 
unset UNIX[*]
unset LINUX[*]

