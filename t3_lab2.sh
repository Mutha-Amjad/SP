# !/bin/bash

ShowAllOwner ()

{
		  echo "File name : File type : Owner "
		  for filename in `ls ~`
	do 

		r = `ls -l ~/$filename | grep $1`
		if [ $? = 0 ]

	then 

		echo "`file ~/$filename` : $1 "

	fi
	done

}

if [ $# = 1 ]

	then 

		ShowAllOwner $1
		elif [ $# = 0 ]

	then 
	echo "No Arguments are given ."
	else
	echo "Too much  Arguments were given ."


	fi
