#!/bin/sh
code="" # The variable where the code to be compiled will be stored
while :
do
read code
	if [ X"$code" = X"stop" ]
	then
		break
	else
		echo "$code" >> IDE.java 
	fi
done
#NOTE: The >> instead of > will not overwrite the file but will append the input to the file as we press enter to go to the next line

# The following line will compile the IDE.java file and execute the compiled IDE.class file in the current working directory
# We remove the .java and the .class file when they arent required for a greater abstraction
javac IDE.java
rm IDE.java
java IDE
rm IDE.class


