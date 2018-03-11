# !/bin/bash

if[ $# = 2 ]
then 

	# Find the owner of the file.

	arr=(`ls -l $1`)
	echo "Owner:" ${arr[2]}
	echo "Group:"${arr[2]}
	echo "Permission:"${arr}
	echo "FileName:" $1

	if[ ${arr[2]} = $2 ]
		then 
			echo "Cheating =0"
		else
			echo "Cheating =1"
fi


else
	echo "Wrong number of arguments."
fi
