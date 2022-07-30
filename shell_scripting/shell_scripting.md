
## Shell scripting
**Conditionals**
- To use conditional we start with `if` and to end we use reverse of that condition i.e `fi`. 
- Some other commands are: 
  - `-eq` : To check if two number are equal 
  - `-ne` : To check if two number are not equal 
  - `-gt` : To check if num1 is greater than num2 
  - `-lt` : To check if num1 is less than num2 
  - `-le` : For less than equal to 
 - Let us assume we have a file names `if_example.sh` containing this:
```
#! /bin/bash

NAME="XYZ"
if [ $NAME=="XYZ" ]
then
    echo "Name is XYZ"
else
    echo "Name is not XYZ"
fi
```
 - Let us assume we have a file named `if_else_example.sh` containing this:
 ```
#! /bin/bash

NUM1=1
NUM2=2
if [ $NUM1 -eq $NUM2 ]
then
    echo "$NUM1 is equal to $NUM2"
elif [ $NUM1 -lt $NUM2 ]
then
    echo "$NUM1 is less than $NUM2"
else
    echo echo "$NUM1 is greater than $NUM2"
fi
```

**Functions**
- `$` is used to place the function arguments. 
- Let us assume we have a file named `function_example.sh` containing this:
```
#! /bin/bash

function hello()
{
    echo "hello $1 and $2"
}
hello "xyz" "abc"
```

**Loops**
- Use an alias to take the value of an iterable. 
- `do` is used for operations 
- `done` is used of the loop 
- Let us assume we have a file named `loop_example.sh` containing this:
```
#! /bin/bash

NAMES="Brad Peter John"
for NAME in $NAMES
    do
        echo "hello $NAME"
done
```

**User inputs**
- How to ask for input to the user.
- How to store those inputs. 
- How to print them on console. 
- Let us assume we have a file named `user_input_example.sh` containing this:
```
#! /bin/bash

echo  "Ente two numbers:"
read num1 num2
echo "You entered:  $num1 and $num2"
```

**Variables**
- It is a convection to write variables in **uppercase** letter. Please also see two ways of printing the output. Let us assume we have a file named `variable_example.sh` containing this:
```
#! /bin/bash

VALUE = "10"
echo "$VALUE"
#or
echo "${VALUE}"
```

