read -p 'Enter a : ' a
read -p	'Enter b : ' b

add=$((a + b))
echo Addition of $a and $b are = $add

sub=$((a - b))
echo Subtraction from $a to $b is = $sub

mul=$((a * b))
echo Multiplication of $a and $b is =  $mul

div=$((a / b))
echo Division of $a by $b is = $div

mod=$((a % b))
echo Modulus of $a by $b is = $mod

((++a))
echo After increment operator = $a 

((--b))
echo After decrement operator = $b

