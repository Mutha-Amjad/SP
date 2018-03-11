#! bin/bash

arr=(`cat  'file'`)
echo  "ARRAY is : " ${arr[*]}
echo  "Length of array is : "${#arr[*]}
echo  "Length of element 3 is  : "${#arr[2]}
 
