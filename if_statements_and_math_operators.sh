#!/bin/bash

	### if statements ###

echo "enter first number to do a comparison with:"
read first_num
echo "enter second number to do a comparison with:"
read second_num

# this is the if statements syntax for bash scripting.
# [[]] is used for string (alphabetical) comparison, not
# mathematical comparisons, but if you still want to check math
# using it, you have to use word style comparison, like:
# '-eq'(equal), '-gt'(greater than), '-lt'(less than),
# '-ge'(greater or equal), '-le'(less than or equal).
# if you use '>' or '<' inside [[]],
# it'll still do comparison(it only allows < and >, not <= and >=),
# but '2 < 10' will be false because bash sees them
# as strings inside [[]], and alphabetically 2 comes
# after 1 (just like b comes after a), it does this by comparing characters
# in each string from left to right, and on the first difference found, it
# does the comparison and returns either true or false.
# also you have to use '$' for variables inside a [[]].
if [[ $first_num -gt $second_num ]]; then
	echo "$first_num is greater than $second_num"
# (()) is better for math comparison, you don't need to use '$'
# for variables inside (()) and math style comparison operators
# like < > >= <= are perfectly valid.
elif (( first_num < second_num )); then
	echo "$first_num is less than $second_num"
else
	echo "$first_num is equal to $second_num"
fi

echo enter an animal name:
read animal_name
echo enter another animal name:
read another_animal_name

if [[ $animal_name == $another_animal_name ]]; then
	echo "You've entered $animal_name twice"
elif [[ $animal_name != $another_animal_name ]]; then
	echo "You entered $animal_name and $another_animal_name"
fi


	### math operators ###
# math operators that can be used in bash scripting:
# + - * / (basic math) ==> (( x = 5 + 2 ))
# % ( modulo or reminder) ==> (( 10 % 3 == 0 ))  # returns flase
# ** ( exponent or power) ==> (( x = 2 ** 3 ))  # returns 8
# += -= *= /= (inline operators) ==> (( count += 1 ))

echo "***Calculations***"
echo "enter value of x:"
read x
echo "enter value of y:"
read y

if (( x % y == 0 )); then
	echo "x and y are both even numbers"
else
	echo "only one of the numbers is even"
fi

if (( x ** y == 4 && x + y == 4 && x * y == 4 )); then
	echo "x and y are both 2"
fi

if (( x == 3 )); then
	(( x += 4 ))
fi
echo "new value of x is: $x"


