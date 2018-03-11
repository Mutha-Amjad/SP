# !/bin/bash

	if [ -s $1 ]
then 

	IFS=$'\n'
	c=1
	for next in `cat $1`
do 
	if [ $c -eq 1 ]
then 
	echo `echo $next >> oddFile`

	c=`expr $c + 1`
else
	echo `echo $next >> evenFile`

	c=`expr $c - 1`
fi
done 
else 
	echo "File is empty or does not exist."
fi
