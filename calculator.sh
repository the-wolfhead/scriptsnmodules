#!/bin/bash

Addition () {
	if [ -z $operand1 ] ; then
		echo read in two numbers first
	elif [ -z $operand2 ] ; then
		echo read in two numbers first
	else
		echo Addition of $operand1 and $operand2 is $((operand1+operand2))
	fi
}
Multiplication () {
	if [ -z $operand1 ] ; then
		echo read in two numbers first
	elif [ -z $operand2 ] ; then
		echo read in two numbers first
	else
		echo Mulltiplication of $operand1 and $operand2 is $((operand1*operand2))
	fi
}
Division () {
	if [ -z $operand1 ] ; then
		echo read in two numbers first
	elif [ -z $operand2 ] ; then
		echo read in two numbers first
	else
		if [[ $operand1 -ge $operand2 ]]; then
			echo division of $operand1 and $operand2 is $((operand1/operand2))
		else 
			echo division of $operand1 and $operand2 is $((operand2/operand1))
		fi
	fi
}
while true
do
 	echo 1. Read in two new numbers.
        echo 2. Add the two numbers
        echo 3. Multiply the two numbers
        echo 4. Divide the two numbers
	echo 5. Quit
        echo Enter your choice:
        read choice
	if [[ $choice -eq 1 ]] ; then
            echo Enter operand1 value:
            read operand1
            echo Enter operand2 value:
            read operand2
	elif [[ $choice -eq 2 ]] ; then
		Addition $operand1 $operand2
	elif [[ $choice -eq 3 ]] ; then
		Multiplication $operand1 $operand2
	elif [[ $choice -eq 4 ]] ; then
		Division $operand1 $operand2
	elif [[ $choice -eq 5 ]] ; then
            exit
	else
		echo wrong choice, choose a number between 1 and 5
	fi
done