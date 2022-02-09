# Chapters:
1. [Variables](#varaibles)
2. [Conditionals](#conditionals)
3. [Operators](#operators)
4. [Loops](#loops)
5. [Arrays](#arrays)
6. [Case](#case)

## Variables
1. 
```#!/bin/bash
word='script'
echo "this is bash $word"
echo "this is bash ${word}ing"
echo $word

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

## for
1.
```
#!/bin/bash
users="devdojo, bobby, tony"
for user in ${users}
do 
    echo "${user}"
done

output: 
devdojo,
bobby,
tony
```

## while
1. Simple while
```
#!/bin/bash

counter=1
while [[ $counter -le 3 ]]
do
    echo "${counter}"
    ((counter++))
done

output: 
1
2
3
```
2. while-break
```#!/bin/bash

i=0
while [[ $i -lt 5 ]]
do
  echo "Number: $i"
  ((i++))
  if [[ "$i" == '2' ]]; then
    break
  fi
done
echo 'All Done'

output: 
Number: 0
Number: 1
All Done
```
3. while-continue
```
#!/bin/bash

i=0
while [[ $i -lt 5 ]]
do
  ((i++))
  if [[ "$i" == '2' ]]; then
    continue 
  fi
  echo "Number: $i"
done
echo 'All Done'

output: 
Number: 1
Number: 3
Number: 4
Number: 5
All Done
```
## until
1.
```
#!/bin/bash
count=1
until [ $count -gt 4 ]
do
    echo "${count}"
    ((count++))
done

output:
1
2
3
4
```
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
2.
```#!/bin/bash
BOOKS=("Clean Code" "Clean Architecture", "The Software Architect Elevator")
for book in "${BOOKS[@]}"; do
  echo "Book: $book"
done

output:
Book: Clean Code
Book: Clean Architecture,
Book: The Software Architect Elevator
```
## Case
1.
```
#!/bin/bash

# -n ensures that input are given in the same line
echo -n "Enter the name of a country: "
read country
echo -n "The official language of $country is "

case $country in Bangladesh)
echo -n "Bangla";;
England | America)
echo -n "English";;
Italy | "San Marino" | Switzerland | "Vatican City")
echo -n "Italian";;
*)
echo -n "Unknown";;
esac

output: 
-
Enter the name of a country: Bangladesh
The official language of Bangladesh is Bangla.

-
Enter the name of a country: Japan
The official language of Japan is Unknown
```
