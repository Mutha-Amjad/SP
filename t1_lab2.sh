# !/bin/bash

if [ $# =0 ]
then 
	echo "No Arguments were given."
elif [ $# -gt 6 ]
then 
	echo "Too much arguments were given."
elif [ $# = 1 ]
then 
	echo "Printing table"
	declare -i num1 
	declare -i num2

	num1=$1
	num2=1

	while [ $num2 -le 10 ] 
do 

	ans= `expr $num1 \* $num2`
	echo " $num1 * $num2 = $ans"
	num2="$num2 + 1"

done 
elif [ $# = 3 ]
then 
	echo "Printing table"
	declare -i num1 
	declare -i num2
	if [ $2 = `-s`]
	then
	num1=$1
	num2=$3

	while [ $num2 -le 10 ] 
do 

	ans= `expr $num1 \* $num2`
	echo " $num1 * $num2 = $ans"
	num2="$num2 + 1"

done 
	elif [ $2 = `-e` ]
	then 
	num1=$1 
	num2=1
	while [ $num2 -le $3 ]
do 

	ans= `expr $num1 \* $num2`
	echo " $num1 * $num2 = $ans"
	num2="$num2 + 1"
done 

else
        echo "Invalid Argumets!!!"
fi

elif [ $# = 2 ]
then
        echo "Missing third argument."
elif [ $# = 5 ]

then 
	if [ $2 = `-s` -a $4 = `-e`]
	then
	declare -i num1 
	declare -i num2
	
	num1=$1
	num2=$3


	while [ $num2 -le $5 ] 
do 

	ans= `expr $num1 \* $num2`
	echo " $num1 * $num2 = $ans"
	num2="$num2 + 1"

done 
else 
	echo "Invalid Arguments"
fi

elif [ $# = 6 ]

then 
	if [ $2 = `-s` -a $4 = `-e` -a $6 = `-r`]
	then
	declare -i num1 
	declare -i num2
	
	num1=$1
	num2=$5


	while [ $num2 -ge $3 ] 
do 

	ans= `expr $num1 \* $num2`
	echo " $num1 * $num2 = $ans"
	num2="$num2 + 1"

done 
else 
	echo "Invalid Arguments"
fi






























