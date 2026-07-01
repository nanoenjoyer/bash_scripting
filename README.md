## bash scripting notes

### subshell ()
subshell allows you to run commands in a "subshell" environment, meaning those commands aren't being run directly in your shell, using (), for example:
```bash
pwd
```
> /home/ibrahim/
```bash
(cd ..; pwd)
```
> /home/
```bash
pwd
```
> /home/ibrahim/
The first 'pwd' will print current working dir, then when you run commands in () like (cd ..; pwd) it will run in a subshell environment, meaning even though we did 'cd ..' it will only change dir in that subshell env which is why it shows '/home/' (it went back one dir), but then again once you do 'pwd' without the (), we still see '/home/ibrahim/' meaning our actual bash env didn't run those commands in the ().

Subshell can also be used for calculations, this time with $(()), for example:
```bash
# this will output 7
echo $(( 3 + 4 ))
```

### exit codes
exit codes determine success or failure, unlike python or JS where we have truthy or falsy, in bash scripting there's these exit codes, an exit code of `0` means success, anything else whether it's `1 or 2 or 3 or 200` means failure, any exit code that's not 0 means nothing but failure, a specic command or a specific script can choose a specific exit code number like 3 and then do specific error handling based on that number, but most of the time it looks like this:
```bash
if [[ ...some failing condition ]]; then
	# you'd do your logging and error handling here
	echo "somehting broke"
	# then exit (end program) and return exit code 1
	exit 1
fi
```
Or you can do something like this:
```bash
# -q -> grep quietly (the string "ERROR" won't be returned back into the terminal)
if grep -q "ERROR" "logs.txt"; then
	echo "you have some errors in your logs"
else
	echo "all is well"
fi
```

