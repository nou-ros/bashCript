# Chapters:
1. [Variables & Arguments](#varaibles_arguments)
2. [Conditionals](#conditionals)
3. [Operators](#operators)
4. [Loops](#loops)
5. [Arrays](#arrays)
6. [Case](#case)
7. [function](#function)
8. [dictionary](#dictionary)

## Variables & Arguments
1. 
```#!/bin/sh
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
```#!/bin/sh

echo "Total arguments : $#"
echo "1st argument = $1"
echo "3rd argument = $3"

output: 
bash main.sh sword art online
Total arguments : 3
1st argument = sword
3rd argument = online
```
3.
```
#!/bin/sh
initial="One"
ending="Piece"
fullName="${initial} ${ending}"
echo "Mangaka of ${fullName} is Oda"

output:
Mangaka of One Piece is Oda.
```
4.
```
#!/bin/sh
string="For standard partition use fdisk else use lvm"
subString=${string:4:9}
echo "$subString"

output:
standard
```
5. argument passing
```
#!/bin/sh
#first 2 arguments
echo $1 $2
args=("$@")
#print first 3 arguments
echo ${args[0]} ${args[1]} ${args[2]}
#print all the arguments
echo $@
echo "Total number of commands passed: $#"

input: ./hello.sh perfectly balanced how everything should be
output: 
perfectly balanced
perfectly balanced how
perfectly balanced how everything should be
Total number of commands passed: 6
```
6. use shell commands inside script
```
#!/bin/bash
echo $(uname -o)

output:
GNU/Linux
```
7. reading user input
```
#!/bin/bash
 
echo -e "Hi, please type the word: \c "
read  word
echo "The word you entered is: $word"
echo -e "Can you please enter two words? "
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""
echo -e "How do you feel about bash scripting? "
# read command now stores a reply into the default build-in variable $REPLY
read
echo "You said $REPLY, I'm glad to hear that! "
echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]} :)"

output: 
Hi, please type the word: nouros.org
The word you entered is: nouros.org
Can you please enter two words? 
Debian Linux
Here is your input: "Debian" "Linux"
How do you feel about bash scripting? 
good
You said good, I'm glad to hear that! 
What are your favorite colours ? 
orange blue black
My favorite colours are also blue, green and black :)
```

## Conditionals
1. if-else
```#!/bin/sh
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
2. if-elif-else
```#!/bin/sh
echo -n "Enter a number "
read  VAR

if [[ $VAR -gt 10 ]]
then 
  echo "The variables is greater than 10."
elif [[ $VAR -eq 10 ]]
then
  echo "The variable is equal to 10."
else
  echo "The variable is less than 10."
fi

output:
Enter a number 5
The variable is less than 10.
```
3. nested-if
```#!/bin/sh
echo -n "Enter the first number: "
read VAR1
echo -n "Enter the second number: "
read VAR2
echo -n "Enter the third number: "
read VAR3

if [[ $VAR1 -ge $VAR2 ]]
then 
  if [[ $VAR1 -ge $VAR3 ]]
  then
    echo "$VAR1 is the largest number."
  else
    echo "$VAR3 is the largest number."
  fi
else
  if [[ $VAR2 -ge $VAR3 ]]
  then 
    echo "$VAR2 is the largest number."
  else
    echo "$VAR3 is the largest number."
  fi
fi

output: 
Enter the first number: 2
Enter the second number: 4
Enter the third number: 7
7 is the largest number.
```
4. multiple conditions
```#!/bin/sh
echo -n "Enter the first number: "
read VAR1
echo -n "Enter the second number: "
read VAR2
echo -n "Enter the third number: "
read VAR3

if [[ $VAR1 -ge $VAR2 ]] && [[ $VAR1 -ge $VAR3 ]]
then
  echo "$VAR1 is the largest number."
elif [[ $VAR2 -ge $VAR1 ]] && [[ $VAR2 -ge $VAR3 ]]
then 
  echo "$VAR2 is the largest number."
else
  echo "$VAR3 is the largest number."
fi 

output:
Enter the first number: 6
Enter the second number: 5
Enter the third number: 3
6 is the largest number.
```
## Operators
1. Arithmatic operators
```
read -p 'Enter a : ' a
read -p 'Enter b : ' b

add=$((a + b))
echo "Addition of ${a} and ${b} are = ${add}"
sub=$((a - b))
echo "Subtraction of ${a} and ${b} is = ${sub}"
mul=$((a * b))
echo "Multiplication of ${a} and ${b} is = $mul"
div=$((a / b))
echo "Division of ${a} by ${b} is = ${div}"
mod=$((a % b))
echo "Modulus of ${a} by ${b} is = ${mod}"
((++a))
echo "After increment operator = ${a}"
((--b))
echo "After decrement operator = ${b}"
```
2. Relational operators
```
read -p "Enter a : " a
read -p "Enter b: " b

if(( ${a} == ${b} ))
then
	echo "${a} and ${b} are equal"
else
	echo "${a} is not equal to ${b}"
fi

if(( ${a} != ${b} ))
then 
	echo "${a} is not equal to ${b}"
else 
	echo "${a} is equal to ${b}"
fi

if(( ${a} < ${b} ))
then 
	echo "${a} is less than ${b}"
else 
	echo "${a} is greater than ${b}"
fi

if(( ${a} > ${b} ))
then 
	echo "${a} is greater than ${b}"
else
	echo "${b} is greater than ${a}"
fi

if(( ${a} >= ${b} ))
then 
	echo "${a} is greater than or equal to ${b}"
else
	echo "${a} is not greater than or equal to ${b}"
fi

if(( ${a} <= ${b} ))
then
	echo "${a} is less than or equal to ${b}"
else	
	echo "${a} is greater than or equal to ${b}"
```

## Loops

## for
1. simple-for
```#!/bin/sh
for element in Hydrogen Helium Lithium Beryllium
do
  echo "Element: $element"
done

output: 
Element: Hydrogen
Element: Helium
Element: Lithium
Element: Beryllium
```
2. for-step
```#!/bin/sh
for i in {0..20..5}
do 
  echo "Number: $i"
done 

output:
Number: 0
Number: 5
Number: 10
Number: 15
Number: 20
```
3. for-break
```#!/bin/sh
for anime in gintama bleach naruto; do  
  if [[ "$anime" == "naruto" ]]; then
    break
  fi
  echo "Anime: $anime"
done 
echo 'All Done!'

output:
Anime: gintama
Anime: bleach
All Done!
```
4. for-continue
```
#!/bin/bash
for anime in gintama bleach naruto; do  
  if [[ "$anime" == "bleach" ]]; then
    continue
  fi
  echo "Anime: $anime"
done 

echo 'All Done!'

output:
Anime: gintama
Anime: naruto
All Done!
```
## while
1. simple-while
```
#!/bin/sh

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
```#!/bin/sh

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
#!/bin/sh

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
#!/bin/sh
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
```#!/bin/sh
myArray=("value 1" "value 2" "value 3" "value 4")
echo "${myArray[1]}"
echo "${myArray[-1]}"
echo "${myArray[@]}"
echo "${#myArray[@]}"
myarray[4]="value5"
myarray+=("value6")
output: 
- value 2
- value 4
- value 1 value 2 value 3 value 4
- 4
- 
```
2.
```#!/bin/sh
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
## Function
1.
```#!/bin/sh
var1='A'
var2='B'

my_function(){
  local var1='C'
  var2='D'
  echo "Inside function : var!: $var1, var2: $var2"
}

echo "Before executing function: var1: $var1, var2: $var2"
my_function
echo "After executing function: var1: $var1, var2: $var2"

output:
Before executing function: var1: A, var2: B
Inside function : var!: C, var2: D
After executing function: var1: A, var2: D
```
2. function return
```
my_function(){  
 local func_result="some work"
 echo "$func_result"
}
result="$(my_function)"
echo ${result}

output:
some work
```
3. function with argument
```#!/bin/bash
greeting(){
echo "first argument $1"
echo "second argument $2"
}

greeting "john" "doe"
```

## dictionary
1.
```
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
echo ${sounds[dog]} # dog's sound
echo ${sounds[@]} # all values
echo ${!sounds[@]} # all keys
echo ${#sounds[@]} # number of elements
unset sounds[dog] # delete dog
echo ${!sounds[@]}

echo -e "\nValues \tof \tsound: "
for value in "${sounds[@]}"; do
  echo $value
done

echo -e "\nKeys \tof \tsound: "
for key in "${sounds[@]}"; do
  echo $key
done

output:
bark
bark tweet moo howl
dog bird cow wolf
4
bird cow wolf

Values  of  sound: 
tweet
moo
howl

Keys    of  sound: 
tweet
moo
howl
```
