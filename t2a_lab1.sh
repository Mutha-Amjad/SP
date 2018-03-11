#!/bin/bash

if[ $# =5 ]
then 

arr=(`ls -l $2`)
arr2=(`ls -l $4`)

	echo "Owner:" ${arr[2]}
	echo "Group:"${arr[3]}
	echo "Permission:"${arr}
	echo "FileName:" $2


	echo "Owner:" ${arr2[2]}
	echo "Group:"${arr2[3]}
	echo "Permission:"${arr2}
	echo "FileName:" $4


	echo "The diffrence between $2 and $4:" 

	` diff -c $2 $4 `

	a=$?

	if[ $a =1 ] 

then 

echo `diff -y $2 $4`
echo "Cheating 0."

else

echo "There is no diffrence."
echo "Cheating 1."
fi



else "Wrong number of argumnets."
fi
	
