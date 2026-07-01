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

