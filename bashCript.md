## Chapters:
1. [Variables](#varaibles)
2. [Conditionals](#conditionals)
3. [Operators](#operators)
4. [Loops](#loops)
5. [Arrays](#arrays)

## Variables
1. 
```#!/bin/bash
WORD='script'
echo "this is bash $WORD"
echo "this is bash ${WORD}ing"
echo $WORD

output: 
- this is bash script
- this is bash scripting
- script
```
2.

## Conditionals
1.
```#!/bin/bash
read -p "Name of rhel 8? " codeName

# -z flag check if string is empty
if [[ -z ${codeName} ]]
then 
    echo "Plese enter the name"
else
    echo "The rhel8 code name is ${codeName}"
fi

output:
-
Name of rhel 8? 
Plese enter the name

-
Name of rhel 8? Ootpa        
The rhel8 code name is Ootpa

```
## Loops
#for

## Arrays
1.
```#!/bin/bash
myArray=("value 1" "value 2" "value 3" "value 4")
echo "${myArray[1]}"
echo "${myArray[-1]}"
echo "${myArray[@]}"
echo "${#myArray[@]}"

output: 
- value 2
- value 4
- value 1 value 2 value 3 value 4
- 4
```
