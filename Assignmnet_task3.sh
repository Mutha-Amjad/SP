# !/bin/bash


	stringtoLower="somestring" 

	IsLower()
	{
	       stringtoLower=${stringtoLower,,}
	}

	IsRoot()
	{
		if[ $USER = "root" ]
	then 
		ans=0
	else
		ans=1
	fi
		return $ans
	}
	
	IsUserExsist()
	{
		r=`cat /etc/passwd | grep $1`

		if[ $? = 0 ]
	then 
		ans=0
	else
		ans=1
	fi
		return $ans
	}
	

#Testing Is_Lower()


	echo -n "Enter a string: "
	read stringtoLower
	Is_Lower
	echo "Converted string: $stringtoLower"



#Testing Is_Root()

	Is_Root
	isroot=$?

	if[ $isroot = 0 ]
then 
	echo "The user execting script is root."
else
	echo "The user execting script is not root."
fi


#Testing Is_User_Exsist()

	echo -n "Enter a username : "
	read user
	Is_User_Exsist $user
	if [ $?=0 ]
then
	echo "The user $user exsist."
else 
	echo "The user $user does not exsist."



fi












