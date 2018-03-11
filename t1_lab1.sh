#!/bin/bash

expr $1 + 0 && expr $2 + 0 



	echo "The sum is " `expr $1 + $2` 
	echo "The subtraction is " `expr $1 - $2`
	echo "The multiplication is " `expr $1 \* $2`
	#Check denominator should not b zero in case of division because it is impossible.
        if [ $2 -ne 0 ]
        then
	echo "The division is " `expr $1 / $2`
	echo "The modulus is " `expr $1 % $2`
	else 
        echo "Division Operations is not possible here  because second argument is zero"
	fi
         

