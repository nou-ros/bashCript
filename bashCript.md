## Chapters:
1. [Variables](#varaibles)
2. [IF Else](#if-else)
3. [Operators](#operators)
4. [Arrays](#arrays)

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

## IF Else

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
