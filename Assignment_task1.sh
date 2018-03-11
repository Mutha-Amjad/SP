# !/bin/bash

#Creating a directory for files  having no extension.

	nexet="noextensions"
	echo `mkdir ./noextensions`



	for filename in `ls`
	do
#Checking if the file is '.' in it .

	if [ [ "$filename" =~ "." ] ]
	then 

#Sorting the extensions.

	exet=${filename#*.}

#Moving a file to apropriate directory.

	if [ -d $exet ]
	then 
		echo "Moving file to this directory."
		echo `mv $filename ./$exet`
	else 

		echo "Creating and Moving file to this directory."
		echo `mkdir ./$exet`
		echo `mv $filename ./$exet`
	fi


	else 
	if [ -f $filename ]
	then 
		echo `mv $filename ./$nexet`
	fi


	fi 
	done

