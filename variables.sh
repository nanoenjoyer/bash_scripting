#!/usr/bin/env bash

     ### Variables ###

# variables in bash must have no spaces between the variable name
# and the value, or else the script will see the variable name as a command
# and the '=' and the value as options/args, it's also better to use
# double quotes as double quotes allow bash to read variables inside the value
# as well as dealing with spaces in the value correctly.
# e.g: greeting="hello $name" works while greeting='hello $name' doesn't work.
# just always use "" unless the value literally contains a $ or * inside it and
# they aren't operators, like in a password or regexp that has $/*, then use '' which
# makes bash treat all chars in the value as text and nothing else.

# this works since it's a simple variable with no spaces or variables inside the single quotes
name='ibrahim'

# when calling a variable always call it inside double quotes
greeting="hello $name"

echo "$greeting, how are you doing?!"

# you can use {} when calling a variable, this allows you to
# do operations on the varible like getting it's length with a #
echo "$name contains ${#name} characters"  # this gets length of the value

# or give the variable a default value, this is best for inputs where the user
# gives no input, so you can use the default, using ${<variable>:-"default value"}

# this asks who ever runs this bash script to enter a value for 'status' variable
# that variable can then be used later in the script (basically an input)
echo "enter status:"
read status

# if 'status' variable is empty (user hit enter without typing anything)
# we give it a default value 'offline', if user enters value, that value is used
# and the operation given below is ignored (value given by user will be used)
echo "$name is ${status:-"offline"}"

