# Linux and shell scripting cheatsheet
There are 4 sections:
  - Others
  - Apple MacBookPro specific
  - Linux commands
  - Shell scripting

## Others
**Nomenclature**
- **Shell scripting** is a program that can be run on UNIX shell
- **Bash** is a Unix shell and command language

**#! bin/bash**
- Inside a bash file you need to write this line `#! /bin/bash` so the interpreter knows it is a bash file. 
- To know where your bash is use `which bash` 

## Apple MacBookPro specific

**How to install Brew**:
- [If you have sudo rights](https://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [If you do NOT have sudo rights](https://superuser.com/questions/619498/can-i-install-homebrew-without-sudo-privileges)

**How to install htop**
- To install run [Ref](https://www.cyberciti.biz/faq/install-htop-on-macos-unix-desktop-running-macbook-pro/): `brew install htop`

**How to add paths to $PATH**
- Let's assume we want to add this path: `/opt/bin` to the `$PATH`: `export PATH=$PATH:~/opt/bin`
- To inspect what paths use: `echo $PATH`


## Linux commands

**chmod**
- Give a bash file (*sh.) persmission to be run 
- `>> chmod +x filename.sh`

**Curl**
- The curl command transfers data to or from a network server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, DICT, TELNET, LDAP or FILE). 
- It is designed to work without user interaction, so it is ideal for use in a shell script. 
- The software offers proxy support, user authentication, FTP uploading, HTTP posting, SSL connections, cookies, file transfer resume, metalink, and other features. 
- `curl [options] [URL...]`
[Ref](https://www.computerhope.com/unix/curl.htm) 

**echo**
- Print text on console
- `>>echo "Hello world!"`

**history**
- Print the last 1,000 command line history 
- `>>history`
- Search in the command history for command lines that contain the word `docker` 
- `>>history | grep docker`

**which and type**
- `which` shows the full path of (shell) commands. Its output is different based on different systems. [Ref](https://unix.stackexchange.com/questions/476951/what-differences-between-type-cd-and-which-cd-commands-in-linux/476955)
```
$ type cd
cd is a shell builtin
```
- `type` display information about command type on Linux. We have 4 command types:
  - Built-in Shell Commands
  - Shell Functions
  - Command Alias
  - excutable Programs 
```
$ which  cd
cd is a shell builtin
cd is /usr/bin/cd
cd is /bin/cd
```

**Folders**
- List only directories: `>>!ls -d */`
- List all files in a folder in a long list format: `>>ls -l`

**touch**
- The touch command is a standard command used in UNIX/Linux operating system which is used to create, change and modify timestamps of a file. Basically, there are two different commands to create a file in the Linux system which is as follows:
  - `cat` command: it is used to create the file with content.
  - `touch` command: it is used to create a file without any content. The file created using touch command is empty. This command can be used when the user doesn’t have data to store at the time of file creation.

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
