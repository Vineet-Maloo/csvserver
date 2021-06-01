#!/bin/bash


 'rm' inputFile

for ((i=0; i<=10; i++ ))
do 
	
	echo "$i", "$RANDOM" >>inputFile 

	
done


